// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'json_label.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JsonLabel _$JsonLabelFromJson(Map<String, dynamic> json) {
  return _JsonLabel.fromJson(json);
}

/// @nodoc
class _$JsonLabelTearOff {
  const _$JsonLabelTearOff();

  _JsonLabel call(
      {required int id,
      @JsonKey(name: 'node_id') required String nodeId,
      required String name,
      required String color,
      @JsonKey(name: 'default') required bool labelDefault}) {
    return _JsonLabel(
      id: id,
      nodeId: nodeId,
      name: name,
      color: color,
      labelDefault: labelDefault,
    );
  }

  JsonLabel fromJson(Map<String, Object> json) {
    return JsonLabel.fromJson(json);
  }
}

/// @nodoc
const $JsonLabel = _$JsonLabelTearOff();

/// @nodoc
mixin _$JsonLabel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'node_id')
  String get nodeId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'default')
  bool get labelDefault => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonLabelCopyWith<JsonLabel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonLabelCopyWith<$Res> {
  factory $JsonLabelCopyWith(JsonLabel value, $Res Function(JsonLabel) then) =
      _$JsonLabelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'node_id') String nodeId,
      String name,
      String color,
      @JsonKey(name: 'default') bool labelDefault});
}

/// @nodoc
class _$JsonLabelCopyWithImpl<$Res> implements $JsonLabelCopyWith<$Res> {
  _$JsonLabelCopyWithImpl(this._value, this._then);

  final JsonLabel _value;
  // ignore: unused_field
  final $Res Function(JsonLabel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? nodeId = freezed,
    Object? name = freezed,
    Object? color = freezed,
    Object? labelDefault = freezed,
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
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      labelDefault: labelDefault == freezed
          ? _value.labelDefault
          : labelDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$JsonLabelCopyWith<$Res> implements $JsonLabelCopyWith<$Res> {
  factory _$JsonLabelCopyWith(
          _JsonLabel value, $Res Function(_JsonLabel) then) =
      __$JsonLabelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'node_id') String nodeId,
      String name,
      String color,
      @JsonKey(name: 'default') bool labelDefault});
}

/// @nodoc
class __$JsonLabelCopyWithImpl<$Res> extends _$JsonLabelCopyWithImpl<$Res>
    implements _$JsonLabelCopyWith<$Res> {
  __$JsonLabelCopyWithImpl(_JsonLabel _value, $Res Function(_JsonLabel) _then)
      : super(_value, (v) => _then(v as _JsonLabel));

  @override
  _JsonLabel get _value => super._value as _JsonLabel;

  @override
  $Res call({
    Object? id = freezed,
    Object? nodeId = freezed,
    Object? name = freezed,
    Object? color = freezed,
    Object? labelDefault = freezed,
  }) {
    return _then(_JsonLabel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nodeId: nodeId == freezed
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      labelDefault: labelDefault == freezed
          ? _value.labelDefault
          : labelDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JsonLabel implements _JsonLabel {
  const _$_JsonLabel(
      {required this.id,
      @JsonKey(name: 'node_id') required this.nodeId,
      required this.name,
      required this.color,
      @JsonKey(name: 'default') required this.labelDefault});

  factory _$_JsonLabel.fromJson(Map<String, dynamic> json) =>
      _$_$_JsonLabelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'node_id')
  final String nodeId;
  @override
  final String name;
  @override
  final String color;
  @override
  @JsonKey(name: 'default')
  final bool labelDefault;

  @override
  String toString() {
    return 'JsonLabel(id: $id, nodeId: $nodeId, name: $name, color: $color, labelDefault: $labelDefault)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JsonLabel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.nodeId, nodeId) ||
                const DeepCollectionEquality().equals(other.nodeId, nodeId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.labelDefault, labelDefault) ||
                const DeepCollectionEquality()
                    .equals(other.labelDefault, labelDefault)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(nodeId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(labelDefault);

  @JsonKey(ignore: true)
  @override
  _$JsonLabelCopyWith<_JsonLabel> get copyWith =>
      __$JsonLabelCopyWithImpl<_JsonLabel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JsonLabelToJson(this);
  }
}

abstract class _JsonLabel implements JsonLabel {
  const factory _JsonLabel(
      {required int id,
      @JsonKey(name: 'node_id') required String nodeId,
      required String name,
      required String color,
      @JsonKey(name: 'default') required bool labelDefault}) = _$_JsonLabel;

  factory _JsonLabel.fromJson(Map<String, dynamic> json) =
      _$_JsonLabel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'node_id')
  String get nodeId => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get color => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'default')
  bool get labelDefault => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JsonLabelCopyWith<_JsonLabel> get copyWith =>
      throw _privateConstructorUsedError;
}
