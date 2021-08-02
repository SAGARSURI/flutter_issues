// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'json_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JsonUser _$JsonUserFromJson(Map<String, dynamic> json) {
  return _JsonUser.fromJson(json);
}

/// @nodoc
class _$JsonUserTearOff {
  const _$JsonUserTearOff();

  _JsonUser call(
      {required String login,
      required int id,
      @JsonKey(name: 'node_id') required String nodeId,
      @JsonKey(name: 'avatar_url') required String avatarUrl}) {
    return _JsonUser(
      login: login,
      id: id,
      nodeId: nodeId,
      avatarUrl: avatarUrl,
    );
  }

  JsonUser fromJson(Map<String, Object> json) {
    return JsonUser.fromJson(json);
  }
}

/// @nodoc
const $JsonUser = _$JsonUserTearOff();

/// @nodoc
mixin _$JsonUser {
  String get login => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'node_id')
  String get nodeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String get avatarUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonUserCopyWith<JsonUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonUserCopyWith<$Res> {
  factory $JsonUserCopyWith(JsonUser value, $Res Function(JsonUser) then) =
      _$JsonUserCopyWithImpl<$Res>;
  $Res call(
      {String login,
      int id,
      @JsonKey(name: 'node_id') String nodeId,
      @JsonKey(name: 'avatar_url') String avatarUrl});
}

/// @nodoc
class _$JsonUserCopyWithImpl<$Res> implements $JsonUserCopyWith<$Res> {
  _$JsonUserCopyWithImpl(this._value, this._then);

  final JsonUser _value;
  // ignore: unused_field
  final $Res Function(JsonUser) _then;

  @override
  $Res call({
    Object? login = freezed,
    Object? id = freezed,
    Object? nodeId = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nodeId: nodeId == freezed
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$JsonUserCopyWith<$Res> implements $JsonUserCopyWith<$Res> {
  factory _$JsonUserCopyWith(_JsonUser value, $Res Function(_JsonUser) then) =
      __$JsonUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String login,
      int id,
      @JsonKey(name: 'node_id') String nodeId,
      @JsonKey(name: 'avatar_url') String avatarUrl});
}

/// @nodoc
class __$JsonUserCopyWithImpl<$Res> extends _$JsonUserCopyWithImpl<$Res>
    implements _$JsonUserCopyWith<$Res> {
  __$JsonUserCopyWithImpl(_JsonUser _value, $Res Function(_JsonUser) _then)
      : super(_value, (v) => _then(v as _JsonUser));

  @override
  _JsonUser get _value => super._value as _JsonUser;

  @override
  $Res call({
    Object? login = freezed,
    Object? id = freezed,
    Object? nodeId = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_JsonUser(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nodeId: nodeId == freezed
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JsonUser implements _JsonUser {
  const _$_JsonUser(
      {required this.login,
      required this.id,
      @JsonKey(name: 'node_id') required this.nodeId,
      @JsonKey(name: 'avatar_url') required this.avatarUrl});

  factory _$_JsonUser.fromJson(Map<String, dynamic> json) =>
      _$_$_JsonUserFromJson(json);

  @override
  final String login;
  @override
  final int id;
  @override
  @JsonKey(name: 'node_id')
  final String nodeId;
  @override
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;

  @override
  String toString() {
    return 'JsonUser(login: $login, id: $id, nodeId: $nodeId, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JsonUser &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.nodeId, nodeId) ||
                const DeepCollectionEquality().equals(other.nodeId, nodeId)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(nodeId) ^
      const DeepCollectionEquality().hash(avatarUrl);

  @JsonKey(ignore: true)
  @override
  _$JsonUserCopyWith<_JsonUser> get copyWith =>
      __$JsonUserCopyWithImpl<_JsonUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JsonUserToJson(this);
  }
}

abstract class _JsonUser implements JsonUser {
  const factory _JsonUser(
      {required String login,
      required int id,
      @JsonKey(name: 'node_id') required String nodeId,
      @JsonKey(name: 'avatar_url') required String avatarUrl}) = _$_JsonUser;

  factory _JsonUser.fromJson(Map<String, dynamic> json) = _$_JsonUser.fromJson;

  @override
  String get login => throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'node_id')
  String get nodeId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'avatar_url')
  String get avatarUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JsonUserCopyWith<_JsonUser> get copyWith =>
      throw _privateConstructorUsedError;
}
