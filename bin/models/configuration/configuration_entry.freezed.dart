// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'configuration_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConfigurationEntry _$ConfigurationEntryFromJson(Map<String, dynamic> json) {
  return _ConfigurationEntry.fromJson(json);
}

/// @nodoc
mixin _$ConfigurationEntry {
  @JsonKey(name: 'repository_name')
  String? get repositoryName => throw _privateConstructorUsedError;
  String? get branch => throw _privateConstructorUsedError;
  String? get executable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfigurationEntryCopyWith<ConfigurationEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigurationEntryCopyWith<$Res> {
  factory $ConfigurationEntryCopyWith(
          ConfigurationEntry value, $Res Function(ConfigurationEntry) then) =
      _$ConfigurationEntryCopyWithImpl<$Res, ConfigurationEntry>;
  @useResult
  $Res call(
      {@JsonKey(name: 'repository_name') String? repositoryName,
      String? branch,
      String? executable});
}

/// @nodoc
class _$ConfigurationEntryCopyWithImpl<$Res, $Val extends ConfigurationEntry>
    implements $ConfigurationEntryCopyWith<$Res> {
  _$ConfigurationEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repositoryName = freezed,
    Object? branch = freezed,
    Object? executable = freezed,
  }) {
    return _then(_value.copyWith(
      repositoryName: freezed == repositoryName
          ? _value.repositoryName
          : repositoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as String?,
      executable: freezed == executable
          ? _value.executable
          : executable // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfigurationEntryImplCopyWith<$Res>
    implements $ConfigurationEntryCopyWith<$Res> {
  factory _$$ConfigurationEntryImplCopyWith(_$ConfigurationEntryImpl value,
          $Res Function(_$ConfigurationEntryImpl) then) =
      __$$ConfigurationEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'repository_name') String? repositoryName,
      String? branch,
      String? executable});
}

/// @nodoc
class __$$ConfigurationEntryImplCopyWithImpl<$Res>
    extends _$ConfigurationEntryCopyWithImpl<$Res, _$ConfigurationEntryImpl>
    implements _$$ConfigurationEntryImplCopyWith<$Res> {
  __$$ConfigurationEntryImplCopyWithImpl(_$ConfigurationEntryImpl _value,
      $Res Function(_$ConfigurationEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repositoryName = freezed,
    Object? branch = freezed,
    Object? executable = freezed,
  }) {
    return _then(_$ConfigurationEntryImpl(
      repositoryName: freezed == repositoryName
          ? _value.repositoryName
          : repositoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as String?,
      executable: freezed == executable
          ? _value.executable
          : executable // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfigurationEntryImpl implements _ConfigurationEntry {
  _$ConfigurationEntryImpl(
      {@JsonKey(name: 'repository_name') this.repositoryName,
      this.branch,
      this.executable});

  factory _$ConfigurationEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfigurationEntryImplFromJson(json);

  @override
  @JsonKey(name: 'repository_name')
  final String? repositoryName;
  @override
  final String? branch;
  @override
  final String? executable;

  @override
  String toString() {
    return 'ConfigurationEntry(repositoryName: $repositoryName, branch: $branch, executable: $executable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfigurationEntryImpl &&
            (identical(other.repositoryName, repositoryName) ||
                other.repositoryName == repositoryName) &&
            (identical(other.branch, branch) || other.branch == branch) &&
            (identical(other.executable, executable) ||
                other.executable == executable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, repositoryName, branch, executable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfigurationEntryImplCopyWith<_$ConfigurationEntryImpl> get copyWith =>
      __$$ConfigurationEntryImplCopyWithImpl<_$ConfigurationEntryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfigurationEntryImplToJson(
      this,
    );
  }
}

abstract class _ConfigurationEntry implements ConfigurationEntry {
  factory _ConfigurationEntry(
      {@JsonKey(name: 'repository_name') final String? repositoryName,
      final String? branch,
      final String? executable}) = _$ConfigurationEntryImpl;

  factory _ConfigurationEntry.fromJson(Map<String, dynamic> json) =
      _$ConfigurationEntryImpl.fromJson;

  @override
  @JsonKey(name: 'repository_name')
  String? get repositoryName;
  @override
  String? get branch;
  @override
  String? get executable;
  @override
  @JsonKey(ignore: true)
  _$$ConfigurationEntryImplCopyWith<_$ConfigurationEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
