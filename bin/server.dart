import 'dart:io';

import 'package:logger/logger.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_hotreload/shelf_hotreload.dart' as hotreload;
import 'package:shelf_router/shelf_router.dart';

part 'server.g.dart';

final Logger logger = Logger(
    level: Level.info,
    filter: ProductionFilter(),
    output: FileOutput(overrideExisting: true, file: File("logs.txt")));

abstract class Controller {
  Router get router;
}
class WebHookController extends Controller {
  @override
  Router get router => _$WebHookControllerRouter(this);

  @Route.post('/webhook')
  Future<Response> echo(Request request) async {
    final body = await request.readAsString();
    logger.i(body);
    return Response.ok(body);
  }
}

void main(List<String> args) async {
  final ip = InternetAddress.anyIPv4;
  final port = int.parse(args[1]);
  hotreload.withHotreload(() => createServer(ip, port));
}

Future<HttpServer> createServer(InternetAddress ip, int port) async {
  final Controller controller = WebHookController();
  final handler =
      Pipeline().addMiddleware(logRequests()).addHandler(controller.router);
  final server = await serve(handler, ip, port);
  logger.i('Listener Created on ${server.address}:${server.port}.');
  return server;
}
