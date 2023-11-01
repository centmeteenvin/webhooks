import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:test/test.dart';

import '../bin/models/configuration/configuration_entry.dart';
import '../bin/models/webhook_payload/webhook_payload.dart';
import '../bin/server.dart';
import '../bin/webhook.dart';

void main() {
  final json = jsonDecode(File("test/resources/payload.json").readAsStringSync());
    late HttpServer server;
    late Uri uri;
    late TestWebhookService webhookService;
    late Controller controller;
    setUp(() async {
      webhookService = TestWebhookService();
      controller = WebHookController(webhookService);
      server = await createServer(InternetAddress.anyIPv4, 48080, controller);
      uri = Uri.parse("http://127.0.0.1:${server.port}/webhooks");
    });
    tearDown(() => server.close());
  group('Test the serializer', () {
    test('Test json to object', () {
      final WebhookPayload payload = WebhookPayload.fromJson(json);
      expect(payload.ref, "refs/heads/riverpod_generator");
    });
    test('Test object to json', () {
      final WebhookPayload payload = WebhookPayload.fromJson(json);
      expect(payload.toJson(), json);
    });
  });
  group('Test endpoint /webhooks', () {
    test('Test if endpoint exists', () async {
      final response = await http.post(uri, headers: {"content-type": "application/json"}, body: jsonEncode(json));
      expect(response.statusCode, 200, reason: "The Endpoint did not return the correct response: $response");
    });
    test('Test if endpoint parses and passes the data', () async {
      final response = await http.post(uri, headers: {"content-type": "application/json"}, body: jsonEncode(json));
      expect(response.statusCode, 200, reason: "The Endpoint did not return the correct response: $response");
      expect(webhookService.lastPayload, WebhookPayload.fromJson(json));
    });
  });
  group('Test ConfigurationService', () {
    final ConfigurationService configurationService = ConfigurationService("test/resources/test_configuration.json");
    test('Test Configuration serialization', () {
      expect(configurationService.configuration.configurationEntries!.length, 1);
      expect(configurationService.configuration.toJson(), jsonDecode(File("test/resources/test_configuration.json").readAsStringSync()));
    });
    test('Test ConfigurationService.findEntry', () {
      expect(configurationService.findEntry("foo", "bar"), null);
      expect(configurationService.findEntry("centmeteenvin/foo", "/bar"), ConfigurationEntry(repositoryName: "centmeteenvin/foo", branch: "/bar", executable: "test/resources/test.cmd"));
    });
  });

  group('Test ProcessService', () {
  test('Test ProcessService().launch()', () async {
    final Stopwatch stopwatch = Stopwatch()..start();
    final stream = await ProcessService().launch("test/resources/test.cmd");
    String data = "";
    await for (final line in stream) {
      data += line;
    }
    stopwatch.stop();
    logger.i(data);
    expect(data.contains("Hello world!"), true);
    expect(data.contains("exit"), true);
    expect(stopwatch.elapsed >= Duration(milliseconds: 750), true);
  });
  });
  test('Test if ProcessService is called from the controller', () async {
    final TestProcessService processService = TestProcessService();
    final WebHookService webHookService = WebHookService(ConfigurationService("test/resources/test_configuration.json"), processService);
    WebhookPayload payload = WebhookPayload.fromJson(json);
    webHookService.receive(payload);
    expect(processService.isCalled, false);
    payload = payload.copyWith(repository: payload.repository!.copyWith(name: "centmeteenvin/foo"), ref: "ref/heads/bar");
    webHookService.receive(payload);
    expect(processService.isCalled, true);
  });
}

class TestWebhookService extends Service {
  late WebhookPayload lastPayload;
  @override
  void receive(WebhookPayload payload) {
    lastPayload = payload;
  }
}

class TestProcessService extends ProcessService {
  bool isCalled = false;
  @override
  Future<Stream<String>> launch(String pathToExecutable) async {
    isCalled = true;
    return Stream.empty();
  }
}
