// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebhookPayloadImpl _$$WebhookPayloadImplFromJson(Map<String, dynamic> json) =>
    _$WebhookPayloadImpl(
      ref: json['ref'] as String?,
      before: json['before'] as String?,
      after: json['after'] as String?,
      repository: json['repository'] == null
          ? null
          : Repository.fromJson(json['repository'] as Map<String, dynamic>),
      pusher: json['pusher'] == null
          ? null
          : Pusher.fromJson(json['pusher'] as Map<String, dynamic>),
      sender: json['sender'] == null
          ? null
          : Sender.fromJson(json['sender'] as Map<String, dynamic>),
      created: json['created'] as bool?,
      deleted: json['deleted'] as bool?,
      forced: json['forced'] as bool?,
      baseRef: json['base_ref'],
      compare: json['compare'] as String?,
      commits: json['commits'] as List<dynamic>?,
      headCommit: json['head_commit'],
    );

Map<String, dynamic> _$$WebhookPayloadImplToJson(
        _$WebhookPayloadImpl instance) =>
    <String, dynamic>{
      'ref': instance.ref,
      'before': instance.before,
      'after': instance.after,
      'repository': instance.repository,
      'pusher': instance.pusher,
      'sender': instance.sender,
      'created': instance.created,
      'deleted': instance.deleted,
      'forced': instance.forced,
      'base_ref': instance.baseRef,
      'compare': instance.compare,
      'commits': instance.commits,
      'head_commit': instance.headCommit,
    };
