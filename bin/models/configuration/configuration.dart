import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'configuration_entry.dart';

part 'configuration.freezed.dart';
part 'configuration.g.dart';

@freezed
class Configuration with _$Configuration {
  factory Configuration({
    @JsonKey(name: 'configuration_entries')
    List<ConfigurationEntry>? configurationEntries,
  }) = _Configuration;

  factory Configuration.fromJson(Map<String, dynamic> json) =>
      _$ConfigurationFromJson(json);
}
