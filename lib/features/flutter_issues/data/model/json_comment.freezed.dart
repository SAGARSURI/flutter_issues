// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'json_comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JsonComment _$JsonCommentFromJson(Map<String, dynamic> json) {
  return _JsonComment.fromJson(json);
}

/// @nodoc
class _$JsonCommentTearOff {
  const _$JsonCommentTearOff();

  _JsonComment call(
      {required int id,
      @JsonKey(name: 'node_id') required String nodeId,
      required String body,
      required JsonUser user,
      @JsonKey(name: 'created_at') required DateTime createdAt,
      @JsonKey(name: 'updated_at') required DateTime updatedAt}) {
    return _JsonComment(
      id: id,
      nodeId: nodeId,
      body: body,
      user: user,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  JsonComment fromJson(Map<String, Object> json) {
    return JsonComment.fromJson(json);
  }
}

/// @nodoc
const $JsonComment = _$JsonCommentTearOff();

/// @nodoc
mixin _$JsonComment {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'node_id')
  String get nodeId => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  JsonUser get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonCommentCopyWith<JsonComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonCommentCopyWith<$Res> {
  factory $JsonCommentCopyWith(
          JsonComment value, $Res Function(JsonComment) then) =
      _$JsonCommentCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'node_id') String nodeId,
      String body,
      JsonUser user,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});

  $JsonUserCopyWith<$Res> get user;
}

/// @nodoc
class _$JsonCommentCopyWithImpl<$Res> implements $JsonCommentCopyWith<$Res> {
  _$JsonCommentCopyWithImpl(this._value, this._then);

  final JsonComment _value;
  // ignore: unused_field
  final $Res Function(JsonComment) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? nodeId = freezed,
    Object? body = freezed,
    Object? user = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nodeId: nodeId == freezed
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as JsonUser,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $JsonUserCopyWith<$Res> get user {
    return $JsonUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$JsonCommentCopyWith<$Res>
    implements $JsonCommentCopyWith<$Res> {
  factory _$JsonCommentCopyWith(
          _JsonComment value, $Res Function(_JsonComment) then) =
      __$JsonCommentCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'node_id') String nodeId,
      String body,
      JsonUser user,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});

  @override
  $JsonUserCopyWith<$Res> get user;
}

/// @nodoc
class __$JsonCommentCopyWithImpl<$Res> extends _$JsonCommentCopyWithImpl<$Res>
    implements _$JsonCommentCopyWith<$Res> {
  __$JsonCommentCopyWithImpl(
      _JsonComment _value, $Res Function(_JsonComment) _then)
      : super(_value, (v) => _then(v as _JsonComment));

  @override
  _JsonComment get _value => super._value as _JsonComment;

  @override
  $Res call({
    Object? id = freezed,
    Object? nodeId = freezed,
    Object? body = freezed,
    Object? user = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_JsonComment(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nodeId: nodeId == freezed
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as JsonUser,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JsonComment implements _JsonComment {
  const _$_JsonComment(
      {required this.id,
      @JsonKey(name: 'node_id') required this.nodeId,
      required this.body,
      required this.user,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$_JsonComment.fromJson(Map<String, dynamic> json) =>
      _$_$_JsonCommentFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'node_id')
  final String nodeId;
  @override
  final String body;
  @override
  final JsonUser user;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'JsonComment(id: $id, nodeId: $nodeId, body: $body, user: $user, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JsonComment &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.nodeId, nodeId) ||
                const DeepCollectionEquality().equals(other.nodeId, nodeId)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(nodeId) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @JsonKey(ignore: true)
  @override
  _$JsonCommentCopyWith<_JsonComment> get copyWith =>
      __$JsonCommentCopyWithImpl<_JsonComment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JsonCommentToJson(this);
  }
}

abstract class _JsonComment implements JsonComment {
  const factory _JsonComment(
          {required int id,
          @JsonKey(name: 'node_id') required String nodeId,
          required String body,
          required JsonUser user,
          @JsonKey(name: 'created_at') required DateTime createdAt,
          @JsonKey(name: 'updated_at') required DateTime updatedAt}) =
      _$_JsonComment;

  factory _JsonComment.fromJson(Map<String, dynamic> json) =
      _$_JsonComment.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'node_id')
  String get nodeId => throw _privateConstructorUsedError;
  @override
  String get body => throw _privateConstructorUsedError;
  @override
  JsonUser get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JsonCommentCopyWith<_JsonComment> get copyWith =>
      throw _privateConstructorUsedError;
}
