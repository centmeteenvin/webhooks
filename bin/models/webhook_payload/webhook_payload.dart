import 'package:freezed_annotation/freezed_annotation.dart';

import 'pusher.dart';
import 'repository.dart';
import 'sender.dart';

part 'webhook_payload.freezed.dart';
part 'webhook_payload.g.dart';

@freezed
class WebhookPayload with _$WebhookPayload {
  factory WebhookPayload({
    String? ref,
    String? before,
    String? after,
    Repository? repository,
    Pusher? pusher,
    Sender? sender,
    bool? created,
    bool? deleted,
    bool? forced,
    @JsonKey(name: 'base_ref') dynamic baseRef,
    String? compare,
    List<dynamic>? commits,
    @JsonKey(name: 'head_commit') dynamic headCommit,
  }) = _WebhookPayload;

  factory WebhookPayload.fromJson(Map<String, dynamic> json) =>
      _$WebhookPayloadFromJson(json);
}
