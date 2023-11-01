// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuration_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConfigurationEntryImpl _$$ConfigurationEntryImplFromJson(
        Map<String, dynamic> json) =>
    _$ConfigurationEntryImpl(
      repositoryName: json['repository_name'] as String?,
      branch: json['branch'] as String?,
      executable: json['executable'] as String?,
    );

Map<String, dynamic> _$$ConfigurationEntryImplToJson(
        _$ConfigurationEntryImpl instance) =>
    <String, dynamic>{
      'repository_name': instance.repositoryName,
      'branch': instance.branch,
      'executable': instance.executable,
    };
