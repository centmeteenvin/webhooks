
import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

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
  @override
  void receive(WebhookPayload payload) {
    logger.i("Received json: $payload");
  }
  
}