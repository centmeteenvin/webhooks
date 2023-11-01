// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConfigurationImpl _$$ConfigurationImplFromJson(Map<String, dynamic> json) =>
    _$ConfigurationImpl(
      configurationEntries: (json['configuration_entries'] as List<dynamic>?)
          ?.map((e) => ConfigurationEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ConfigurationImplToJson(_$ConfigurationImpl instance) =>
    <String, dynamic>{
      'configuration_entries':
          instance.configurationEntries?.map((e) => e.toJson()).toList(),
    };
