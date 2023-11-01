// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$WebHookServiceRouter(WebHookService service) {
  final router = Router();
  router.add(
    'POST',
    r'/webhook',
    service.echo,
  );
  return router;
}
