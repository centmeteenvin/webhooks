// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'webhook_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WebhookPayload _$WebhookPayloadFromJson(Map<String, dynamic> json) {
  return _WebhookPayload.fromJson(json);
}

/// @nodoc
mixin _$WebhookPayload {
  String? get ref => throw _privateConstructorUsedError;
  String? get before => throw _privateConstructorUsedError;
  String? get after => throw _privateConstructorUsedError;
  Repository? get repository => throw _privateConstructorUsedError;
  Pusher? get pusher => throw _privateConstructorUsedError;
  Sender? get sender => throw _privateConstructorUsedError;
  bool? get created => throw _privateConstructorUsedError;
  bool? get deleted => throw _privateConstructorUsedError;
  bool? get forced => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_ref')
  dynamic get baseRef => throw _privateConstructorUsedError;
  String? get compare => throw _privateConstructorUsedError;
  List<dynamic>? get commits => throw _privateConstructorUsedError;
  @JsonKey(name: 'head_commit')
  dynamic get headCommit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebhookPayloadCopyWith<WebhookPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebhookPayloadCopyWith<$Res> {
  factory $WebhookPayloadCopyWith(
          WebhookPayload value, $Res Function(WebhookPayload) then) =
      _$WebhookPayloadCopyWithImpl<$Res, WebhookPayload>;
  @useResult
  $Res call(
      {String? ref,
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
      @JsonKey(name: 'head_commit') dynamic headCommit});

  $RepositoryCopyWith<$Res>? get repository;
  $PusherCopyWith<$Res>? get pusher;
  $SenderCopyWith<$Res>? get sender;
}

/// @nodoc
class _$WebhookPayloadCopyWithImpl<$Res, $Val extends WebhookPayload>
    implements $WebhookPayloadCopyWith<$Res> {
  _$WebhookPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ref = freezed,
    Object? before = freezed,
    Object? after = freezed,
    Object? repository = freezed,
    Object? pusher = freezed,
    Object? sender = freezed,
    Object? created = freezed,
    Object? deleted = freezed,
    Object? forced = freezed,
    Object? baseRef = freezed,
    Object? compare = freezed,
    Object? commits = freezed,
    Object? headCommit = freezed,
  }) {
    return _then(_value.copyWith(
      ref: freezed == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String?,
      before: freezed == before
          ? _value.before
          : before // ignore: cast_nullable_to_non_nullable
              as String?,
      after: freezed == after
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as String?,
      repository: freezed == repository
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as Repository?,
      pusher: freezed == pusher
          ? _value.pusher
          : pusher // ignore: cast_nullable_to_non_nullable
              as Pusher?,
      sender: freezed == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as Sender?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as bool?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      forced: freezed == forced
          ? _value.forced
          : forced // ignore: cast_nullable_to_non_nullable
              as bool?,
      baseRef: freezed == baseRef
          ? _value.baseRef
          : baseRef // ignore: cast_nullable_to_non_nullable
              as dynamic,
      compare: freezed == compare
          ? _value.compare
          : compare // ignore: cast_nullable_to_non_nullable
              as String?,
      commits: freezed == commits
          ? _value.commits
          : commits // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      headCommit: freezed == headCommit
          ? _value.headCommit
          : headCommit // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RepositoryCopyWith<$Res>? get repository {
    if (_value.repository == null) {
      return null;
    }

    return $RepositoryCopyWith<$Res>(_value.repository!, (value) {
      return _then(_value.copyWith(repository: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PusherCopyWith<$Res>? get pusher {
    if (_value.pusher == null) {
      return null;
    }

    return $PusherCopyWith<$Res>(_value.pusher!, (value) {
      return _then(_value.copyWith(pusher: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SenderCopyWith<$Res>? get sender {
    if (_value.sender == null) {
      return null;
    }

    return $SenderCopyWith<$Res>(_value.sender!, (value) {
      return _then(_value.copyWith(sender: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WebhookPayloadImplCopyWith<$Res>
    implements $WebhookPayloadCopyWith<$Res> {
  factory _$$WebhookPayloadImplCopyWith(_$WebhookPayloadImpl value,
          $Res Function(_$WebhookPayloadImpl) then) =
      __$$WebhookPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? ref,
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
      @JsonKey(name: 'head_commit') dynamic headCommit});

  @override
  $RepositoryCopyWith<$Res>? get repository;
  @override
  $PusherCopyWith<$Res>? get pusher;
  @override
  $SenderCopyWith<$Res>? get sender;
}

/// @nodoc
class __$$WebhookPayloadImplCopyWithImpl<$Res>
    extends _$WebhookPayloadCopyWithImpl<$Res, _$WebhookPayloadImpl>
    implements _$$WebhookPayloadImplCopyWith<$Res> {
  __$$WebhookPayloadImplCopyWithImpl(
      _$WebhookPayloadImpl _value, $Res Function(_$WebhookPayloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ref = freezed,
    Object? before = freezed,
    Object? after = freezed,
    Object? repository = freezed,
    Object? pusher = freezed,
    Object? sender = freezed,
    Object? created = freezed,
    Object? deleted = freezed,
    Object? forced = freezed,
    Object? baseRef = freezed,
    Object? compare = freezed,
    Object? commits = freezed,
    Object? headCommit = freezed,
  }) {
    return _then(_$WebhookPayloadImpl(
      ref: freezed == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String?,
      before: freezed == before
          ? _value.before
          : before // ignore: cast_nullable_to_non_nullable
              as String?,
      after: freezed == after
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as String?,
      repository: freezed == repository
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as Repository?,
      pusher: freezed == pusher
          ? _value.pusher
          : pusher // ignore: cast_nullable_to_non_nullable
              as Pusher?,
      sender: freezed == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as Sender?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as bool?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      forced: freezed == forced
          ? _value.forced
          : forced // ignore: cast_nullable_to_non_nullable
              as bool?,
      baseRef: freezed == baseRef
          ? _value.baseRef
          : baseRef // ignore: cast_nullable_to_non_nullable
              as dynamic,
      compare: freezed == compare
          ? _value.compare
          : compare // ignore: cast_nullable_to_non_nullable
              as String?,
      commits: freezed == commits
          ? _value._commits
          : commits // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      headCommit: freezed == headCommit
          ? _value.headCommit
          : headCommit // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebhookPayloadImpl implements _WebhookPayload {
  _$WebhookPayloadImpl(
      {this.ref,
      this.before,
      this.after,
      this.repository,
      this.pusher,
      this.sender,
      this.created,
      this.deleted,
      this.forced,
      @JsonKey(name: 'base_ref') this.baseRef,
      this.compare,
      final List<dynamic>? commits,
      @JsonKey(name: 'head_commit') this.headCommit})
      : _commits = commits;

  factory _$WebhookPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebhookPayloadImplFromJson(json);

  @override
  final String? ref;
  @override
  final String? before;
  @override
  final String? after;
  @override
  final Repository? repository;
  @override
  final Pusher? pusher;
  @override
  final Sender? sender;
  @override
  final bool? created;
  @override
  final bool? deleted;
  @override
  final bool? forced;
  @override
  @JsonKey(name: 'base_ref')
  final dynamic baseRef;
  @override
  final String? compare;
  final List<dynamic>? _commits;
  @override
  List<dynamic>? get commits {
    final value = _commits;
    if (value == null) return null;
    if (_commits is EqualUnmodifiableListView) return _commits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'head_commit')
  final dynamic headCommit;

  @override
  String toString() {
    return 'WebhookPayload(ref: $ref, before: $before, after: $after, repository: $repository, pusher: $pusher, sender: $sender, created: $created, deleted: $deleted, forced: $forced, baseRef: $baseRef, compare: $compare, commits: $commits, headCommit: $headCommit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebhookPayloadImpl &&
            (identical(other.ref, ref) || other.ref == ref) &&
            (identical(other.before, before) || other.before == before) &&
            (identical(other.after, after) || other.after == after) &&
            (identical(other.repository, repository) ||
                other.repository == repository) &&
            (identical(other.pusher, pusher) || other.pusher == pusher) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.forced, forced) || other.forced == forced) &&
            const DeepCollectionEquality().equals(other.baseRef, baseRef) &&
            (identical(other.compare, compare) || other.compare == compare) &&
            const DeepCollectionEquality().equals(other._commits, _commits) &&
            const DeepCollectionEquality()
                .equals(other.headCommit, headCommit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      ref,
      before,
      after,
      repository,
      pusher,
      sender,
      created,
      deleted,
      forced,
      const DeepCollectionEquality().hash(baseRef),
      compare,
      const DeepCollectionEquality().hash(_commits),
      const DeepCollectionEquality().hash(headCommit));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WebhookPayloadImplCopyWith<_$WebhookPayloadImpl> get copyWith =>
      __$$WebhookPayloadImplCopyWithImpl<_$WebhookPayloadImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebhookPayloadImplToJson(
      this,
    );
  }
}

abstract class _WebhookPayload implements WebhookPayload {
  factory _WebhookPayload(
          {final String? ref,
          final String? before,
          final String? after,
          final Repository? repository,
          final Pusher? pusher,
          final Sender? sender,
          final bool? created,
          final bool? deleted,
          final bool? forced,
          @JsonKey(name: 'base_ref') final dynamic baseRef,
          final String? compare,
          final List<dynamic>? commits,
          @JsonKey(name: 'head_commit') final dynamic headCommit}) =
      _$WebhookPayloadImpl;

  factory _WebhookPayload.fromJson(Map<String, dynamic> json) =
      _$WebhookPayloadImpl.fromJson;

  @override
  String? get ref;
  @override
  String? get before;
  @override
  String? get after;
  @override
  Repository? get repository;
  @override
  Pusher? get pusher;
  @override
  Sender? get sender;
  @override
  bool? get created;
  @override
  bool? get deleted;
  @override
  bool? get forced;
  @override
  @JsonKey(name: 'base_ref')
  dynamic get baseRef;
  @override
  String? get compare;
  @override
  List<dynamic>? get commits;
  @override
  @JsonKey(name: 'head_commit')
  dynamic get headCommit;
  @override
  @JsonKey(ignore: true)
  _$$WebhookPayloadImplCopyWith<_$WebhookPayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
