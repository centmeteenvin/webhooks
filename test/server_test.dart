
import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';

import '../bin/models/webhook_payload/webhook_payload.dart';


void main() {
  group('Test the serializer', () {
    final json = jsonDecode(File("test/resources/payload.json").readAsStringSync());
    test('Test json to object', () {
      final WebhookPayload payload = WebhookPayload.fromJson(json);
      expect(payload.ref, "refs/heads/riverpod_generator");
    });
    test('Test object to json', () {
      final WebhookPayload payload = WebhookPayload.fromJson(json);
      expect(payload.toJson(), json);
    });
  });
}