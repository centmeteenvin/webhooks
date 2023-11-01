// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$WebHookControllerRouter(WebHookController service) {
  final router = Router();
  router.add(
    'POST',
    r'/webhooks',
    service.echo,
  );
  return router;
}
