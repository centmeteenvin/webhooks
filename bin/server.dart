import 'dart:io';

import 'package:logger/logger.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_hotreload/shelf_hotreload.dart' as hotreload;

import 'webhook.dart';


final Logger logger = Logger(
    level: Level.info,
    filter: ProductionFilter(),
    output: FileOutput(overrideExisting: true, file: File("logs.txt")));


void main(List<String> args) async {
  final ip = InternetAddress.anyIPv4;
  final port = int.parse(args[1]);
  final WebHookController controller = WebHookController(WebHookService());
  hotreload.withHotreload(() => createServer(ip, port, controller));
}

Future<HttpServer> createServer(InternetAddress ip, int port, Controller controller) async {
  final handler =
      Pipeline().addMiddleware(logRequests()).addHandler(controller.router);
  final server = await serve(handler, ip, port);
  logger.i('Listener Created on ${server.address}:${server.port}.');
  return server;
}
