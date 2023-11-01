// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$WebHookControllerRouter(WebHookController service) {
  final router = Router();
  router.add(
    'POST',
    r'/webhook',
    service.echo,
  );
  return router;
}
