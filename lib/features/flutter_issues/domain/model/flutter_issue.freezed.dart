// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'flutter_issue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FlutterIssueTearOff {
  const _$FlutterIssueTearOff();

  _FlutterIssue create(
      {required String title,
      required String body,
      required int number,
      required int comments,
      required IssueState currentState,
      required DateTime createdAt,
      required bool isPullRequest,
      required List<Label> label}) {
    return _FlutterIssue(
      title: title,
      body: body,
      number: number,
      comments: comments,
      currentState: currentState,
      createdAt: createdAt,
      isPullRequest: isPullRequest,
      label: label,
    );
  }
}

/// @nodoc
const $FlutterIssue = _$FlutterIssueTearOff();

/// @nodoc
mixin _$FlutterIssue {
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  int get comments => throw _privateConstructorUsedError;
  IssueState get currentState => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  bool get isPullRequest => throw _privateConstructorUsedError;
  List<Label> get label => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title,
            String body,
            int number,
            int comments,
            IssueState currentState,
            DateTime createdAt,
            bool isPullRequest,
            List<Label> label)
        create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title,
            String body,
            int number,
            int comments,
            IssueState currentState,
            DateTime createdAt,
            bool isPullRequest,
            List<Label> label)?
        create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterIssue value) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FlutterIssue value)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlutterIssueCopyWith<FlutterIssue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlutterIssueCopyWith<$Res> {
  factory $FlutterIssueCopyWith(
          FlutterIssue value, $Res Function(FlutterIssue) then) =
      _$FlutterIssueCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String body,
      int number,
      int comments,
      IssueState currentState,
      DateTime createdAt,
      bool isPullRequest,
      List<Label> label});
}

/// @nodoc
class _$FlutterIssueCopyWithImpl<$Res> implements $FlutterIssueCopyWith<$Res> {
  _$FlutterIssueCopyWithImpl(this._value, this._then);

  final FlutterIssue _value;
  // ignore: unused_field
  final $Res Function(FlutterIssue) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? number = freezed,
    Object? comments = freezed,
    Object? currentState = freezed,
    Object? createdAt = freezed,
    Object? isPullRequest = freezed,
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int,
      currentState: currentState == freezed
          ? _value.currentState
          : currentState // ignore: cast_nullable_to_non_nullable
              as IssueState,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPullRequest: isPullRequest == freezed
          ? _value.isPullRequest
          : isPullRequest // ignore: cast_nullable_to_non_nullable
              as bool,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as List<Label>,
    ));
  }
}

/// @nodoc
abstract class _$FlutterIssueCopyWith<$Res>
    implements $FlutterIssueCopyWith<$Res> {
  factory _$FlutterIssueCopyWith(
          _FlutterIssue value, $Res Function(_FlutterIssue) then) =
      __$FlutterIssueCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String body,
      int number,
      int comments,
      IssueState currentState,
      DateTime createdAt,
      bool isPullRequest,
      List<Label> label});
}

/// @nodoc
class __$FlutterIssueCopyWithImpl<$Res> extends _$FlutterIssueCopyWithImpl<$Res>
    implements _$FlutterIssueCopyWith<$Res> {
  __$FlutterIssueCopyWithImpl(
      _FlutterIssue _value, $Res Function(_FlutterIssue) _then)
      : super(_value, (v) => _then(v as _FlutterIssue));

  @override
  _FlutterIssue get _value => super._value as _FlutterIssue;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? number = freezed,
    Object? comments = freezed,
    Object? currentState = freezed,
    Object? createdAt = freezed,
    Object? isPullRequest = freezed,
    Object? label = freezed,
  }) {
    return _then(_FlutterIssue(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int,
      currentState: currentState == freezed
          ? _value.currentState
          : currentState // ignore: cast_nullable_to_non_nullable
              as IssueState,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPullRequest: isPullRequest == freezed
          ? _value.isPullRequest
          : isPullRequest // ignore: cast_nullable_to_non_nullable
              as bool,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as List<Label>,
    ));
  }
}

/// @nodoc

class _$_FlutterIssue implements _FlutterIssue {
  _$_FlutterIssue(
      {required this.title,
      required this.body,
      required this.number,
      required this.comments,
      required this.currentState,
      required this.createdAt,
      required this.isPullRequest,
      required this.label});

  @override
  final String title;
  @override
  final String body;
  @override
  final int number;
  @override
  final int comments;
  @override
  final IssueState currentState;
  @override
  final DateTime createdAt;
  @override
  final bool isPullRequest;
  @override
  final List<Label> label;

  @override
  String toString() {
    return 'FlutterIssue.create(title: $title, body: $body, number: $number, comments: $comments, currentState: $currentState, createdAt: $createdAt, isPullRequest: $isPullRequest, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FlutterIssue &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)) &&
            (identical(other.currentState, currentState) ||
                const DeepCollectionEquality()
                    .equals(other.currentState, currentState)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.isPullRequest, isPullRequest) ||
                const DeepCollectionEquality()
                    .equals(other.isPullRequest, isPullRequest)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(currentState) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(isPullRequest) ^
      const DeepCollectionEquality().hash(label);

  @JsonKey(ignore: true)
  @override
  _$FlutterIssueCopyWith<_FlutterIssue> get copyWith =>
      __$FlutterIssueCopyWithImpl<_FlutterIssue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title,
            String body,
            int number,
            int comments,
            IssueState currentState,
            DateTime createdAt,
            bool isPullRequest,
            List<Label> label)
        create,
  }) {
    return create(title, body, number, comments, currentState, createdAt,
        isPullRequest, label);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title,
            String body,
            int number,
            int comments,
            IssueState currentState,
            DateTime createdAt,
            bool isPullRequest,
            List<Label> label)?
        create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(title, body, number, comments, currentState, createdAt,
          isPullRequest, label);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterIssue value) create,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FlutterIssue value)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _FlutterIssue implements FlutterIssue {
  factory _FlutterIssue(
      {required String title,
      required String body,
      required int number,
      required int comments,
      required IssueState currentState,
      required DateTime createdAt,
      required bool isPullRequest,
      required List<Label> label}) = _$_FlutterIssue;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get body => throw _privateConstructorUsedError;
  @override
  int get number => throw _privateConstructorUsedError;
  @override
  int get comments => throw _privateConstructorUsedError;
  @override
  IssueState get currentState => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  bool get isPullRequest => throw _privateConstructorUsedError;
  @override
  List<Label> get label => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FlutterIssueCopyWith<_FlutterIssue> get copyWith =>
      throw _privateConstructorUsedError;
}
