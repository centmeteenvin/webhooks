import 'package:freezed_annotation/freezed_annotation.dart';

part 'configuration_entry.freezed.dart';
part 'configuration_entry.g.dart';

@freezed
class ConfigurationEntry with _$ConfigurationEntry {
  factory ConfigurationEntry({
    @JsonKey(name: 'repository_name') String? repositoryName,
    String? branch,
    String? executable,
  }) = _ConfigurationEntry;

  factory ConfigurationEntry.fromJson(Map<String, dynamic> json) =>
      _$ConfigurationEntryFromJson(json);
}
