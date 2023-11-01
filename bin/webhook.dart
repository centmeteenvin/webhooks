import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:collection/collection.dart';

import 'models/configuration/configuration.dart';
import 'models/configuration/configuration_entry.dart';
import 'models/webhook_payload/webhook_payload.dart';
import 'server.dart';

part 'webhook.g.dart';

abstract class Controller {
  Router get router;
  final Service _service;
  Controller(this._service);
}

class WebHookController extends Controller {
  WebHookController(super.service);

  @override
  Router get router => _$WebHookControllerRouter(this);

  @Route.post('/webhook')
  Future<Response> echo(Request request) async {
    final body = await request.readAsString();
    logger.i(body);
    _service.receive(WebhookPayload.fromJson(jsonDecode(body)));
    return Response.ok(body);
  }
}

abstract class Service {
  void receive(WebhookPayload payload);
}

class WebHookService extends Service {
  final ConfigurationService _configurationService;

  WebHookService(this._configurationService);
  
  @override
  void receive(WebhookPayload payload) {
    logger.i("Received json: $payload");
    final ConfigurationEntry? configurationEntry = _configurationService.findEntry(payload.repository!.name!, payload.ref!.replaceAll("refs/head", ""));
    if (configurationEntry == null) {
      logger.i("No Configuration was found for the following payload: $payload");
      return;
    }

  }
}

class ConfigurationService {
  late final Configuration _configuration;

  ConfigurationService(String configurationFilePath) {
    final content = File(configurationFilePath).readAsStringSync();
    final json = jsonDecode(content);
    _configuration = Configuration.fromJson(json);
  }
  ///Takes a repositoryName as argument e.g: {github_user}/{repository_name}.
  ///Takes a branchName of the form /{branch_name} e.g.: /main.
  ConfigurationEntry? findEntry(String repositoryName, String branch) {
    return _configuration.configurationEntries!.firstWhereOrNull((element) => element.repositoryName == repositoryName && branch == branch);
  }

  Configuration get configuration => _configuration;
}

class ProcessService {
  Future<Stream> launch(String pathToExecutable) async {
    final process = await Process.start(pathToExecutable, []);
    return process.stdout.transform(utf8.decoder);
  }
}
