// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'json_flutter_issue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JsonFlutterIssue _$JsonFlutterIssueFromJson(Map<String, dynamic> json) {
  return _JsonFlutterIssue.fromJson(json);
}

/// @nodoc
class _$JsonFlutterIssueTearOff {
  const _$JsonFlutterIssueTearOff();

  _JsonFlutterIssue call(
      {required int number,
      required String title,
      required JsonState state,
      required String body,
      JsonUser? assignee,
      List<JsonUser> assignees = const <JsonUser>[],
      required int comments,
      @JsonKey(name: 'created_at') required DateTime createdAt,
      JsonPullRequest? pullRequest,
      List<JsonLabel> labels = const <JsonLabel>[]}) {
    return _JsonFlutterIssue(
      number: number,
      title: title,
      state: state,
      body: body,
      assignee: assignee,
      assignees: assignees,
      comments: comments,
      createdAt: createdAt,
      pullRequest: pullRequest,
      labels: labels,
    );
  }

  JsonFlutterIssue fromJson(Map<String, Object> json) {
    return JsonFlutterIssue.fromJson(json);
  }
}

/// @nodoc
const $JsonFlutterIssue = _$JsonFlutterIssueTearOff();

/// @nodoc
mixin _$JsonFlutterIssue {
  int get number => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  JsonState get state => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  JsonUser? get assignee => throw _privateConstructorUsedError;
  List<JsonUser> get assignees => throw _privateConstructorUsedError;
  int get comments => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  JsonPullRequest? get pullRequest => throw _privateConstructorUsedError;
  List<JsonLabel> get labels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonFlutterIssueCopyWith<JsonFlutterIssue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonFlutterIssueCopyWith<$Res> {
  factory $JsonFlutterIssueCopyWith(
          JsonFlutterIssue value, $Res Function(JsonFlutterIssue) then) =
      _$JsonFlutterIssueCopyWithImpl<$Res>;
  $Res call(
      {int number,
      String title,
      JsonState state,
      String body,
      JsonUser? assignee,
      List<JsonUser> assignees,
      int comments,
      @JsonKey(name: 'created_at') DateTime createdAt,
      JsonPullRequest? pullRequest,
      List<JsonLabel> labels});

  $JsonUserCopyWith<$Res>? get assignee;
  $JsonPullRequestCopyWith<$Res>? get pullRequest;
}

/// @nodoc
class _$JsonFlutterIssueCopyWithImpl<$Res>
    implements $JsonFlutterIssueCopyWith<$Res> {
  _$JsonFlutterIssueCopyWithImpl(this._value, this._then);

  final JsonFlutterIssue _value;
  // ignore: unused_field
  final $Res Function(JsonFlutterIssue) _then;

  @override
  $Res call({
    Object? number = freezed,
    Object? title = freezed,
    Object? state = freezed,
    Object? body = freezed,
    Object? assignee = freezed,
    Object? assignees = freezed,
    Object? comments = freezed,
    Object? createdAt = freezed,
    Object? pullRequest = freezed,
    Object? labels = freezed,
  }) {
    return _then(_value.copyWith(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as JsonState,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      assignee: assignee == freezed
          ? _value.assignee
          : assignee // ignore: cast_nullable_to_non_nullable
              as JsonUser?,
      assignees: assignees == freezed
          ? _value.assignees
          : assignees // ignore: cast_nullable_to_non_nullable
              as List<JsonUser>,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pullRequest: pullRequest == freezed
          ? _value.pullRequest
          : pullRequest // ignore: cast_nullable_to_non_nullable
              as JsonPullRequest?,
      labels: labels == freezed
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<JsonLabel>,
    ));
  }

  @override
  $JsonUserCopyWith<$Res>? get assignee {
    if (_value.assignee == null) {
      return null;
    }

    return $JsonUserCopyWith<$Res>(_value.assignee!, (value) {
      return _then(_value.copyWith(assignee: value));
    });
  }

  @override
  $JsonPullRequestCopyWith<$Res>? get pullRequest {
    if (_value.pullRequest == null) {
      return null;
    }

    return $JsonPullRequestCopyWith<$Res>(_value.pullRequest!, (value) {
      return _then(_value.copyWith(pullRequest: value));
    });
  }
}

/// @nodoc
abstract class _$JsonFlutterIssueCopyWith<$Res>
    implements $JsonFlutterIssueCopyWith<$Res> {
  factory _$JsonFlutterIssueCopyWith(
          _JsonFlutterIssue value, $Res Function(_JsonFlutterIssue) then) =
      __$JsonFlutterIssueCopyWithImpl<$Res>;
  @override
  $Res call(
      {int number,
      String title,
      JsonState state,
      String body,
      JsonUser? assignee,
      List<JsonUser> assignees,
      int comments,
      @JsonKey(name: 'created_at') DateTime createdAt,
      JsonPullRequest? pullRequest,
      List<JsonLabel> labels});

  @override
  $JsonUserCopyWith<$Res>? get assignee;
  @override
  $JsonPullRequestCopyWith<$Res>? get pullRequest;
}

/// @nodoc
class __$JsonFlutterIssueCopyWithImpl<$Res>
    extends _$JsonFlutterIssueCopyWithImpl<$Res>
    implements _$JsonFlutterIssueCopyWith<$Res> {
  __$JsonFlutterIssueCopyWithImpl(
      _JsonFlutterIssue _value, $Res Function(_JsonFlutterIssue) _then)
      : super(_value, (v) => _then(v as _JsonFlutterIssue));

  @override
  _JsonFlutterIssue get _value => super._value as _JsonFlutterIssue;

  @override
  $Res call({
    Object? number = freezed,
    Object? title = freezed,
    Object? state = freezed,
    Object? body = freezed,
    Object? assignee = freezed,
    Object? assignees = freezed,
    Object? comments = freezed,
    Object? createdAt = freezed,
    Object? pullRequest = freezed,
    Object? labels = freezed,
  }) {
    return _then(_JsonFlutterIssue(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as JsonState,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      assignee: assignee == freezed
          ? _value.assignee
          : assignee // ignore: cast_nullable_to_non_nullable
              as JsonUser?,
      assignees: assignees == freezed
          ? _value.assignees
          : assignees // ignore: cast_nullable_to_non_nullable
              as List<JsonUser>,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pullRequest: pullRequest == freezed
          ? _value.pullRequest
          : pullRequest // ignore: cast_nullable_to_non_nullable
              as JsonPullRequest?,
      labels: labels == freezed
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<JsonLabel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JsonFlutterIssue implements _JsonFlutterIssue {
  const _$_JsonFlutterIssue(
      {required this.number,
      required this.title,
      required this.state,
      required this.body,
      this.assignee,
      this.assignees = const <JsonUser>[],
      required this.comments,
      @JsonKey(name: 'created_at') required this.createdAt,
      this.pullRequest,
      this.labels = const <JsonLabel>[]});

  factory _$_JsonFlutterIssue.fromJson(Map<String, dynamic> json) =>
      _$_$_JsonFlutterIssueFromJson(json);

  @override
  final int number;
  @override
  final String title;
  @override
  final JsonState state;
  @override
  final String body;
  @override
  final JsonUser? assignee;
  @JsonKey(defaultValue: const <JsonUser>[])
  @override
  final List<JsonUser> assignees;
  @override
  final int comments;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  final JsonPullRequest? pullRequest;
  @JsonKey(defaultValue: const <JsonLabel>[])
  @override
  final List<JsonLabel> labels;

  @override
  String toString() {
    return 'JsonFlutterIssue(number: $number, title: $title, state: $state, body: $body, assignee: $assignee, assignees: $assignees, comments: $comments, createdAt: $createdAt, pullRequest: $pullRequest, labels: $labels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JsonFlutterIssue &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.assignee, assignee) ||
                const DeepCollectionEquality()
                    .equals(other.assignee, assignee)) &&
            (identical(other.assignees, assignees) ||
                const DeepCollectionEquality()
                    .equals(other.assignees, assignees)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.pullRequest, pullRequest) ||
                const DeepCollectionEquality()
                    .equals(other.pullRequest, pullRequest)) &&
            (identical(other.labels, labels) ||
                const DeepCollectionEquality().equals(other.labels, labels)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(assignee) ^
      const DeepCollectionEquality().hash(assignees) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(pullRequest) ^
      const DeepCollectionEquality().hash(labels);

  @JsonKey(ignore: true)
  @override
  _$JsonFlutterIssueCopyWith<_JsonFlutterIssue> get copyWith =>
      __$JsonFlutterIssueCopyWithImpl<_JsonFlutterIssue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JsonFlutterIssueToJson(this);
  }
}

abstract class _JsonFlutterIssue implements JsonFlutterIssue {
  const factory _JsonFlutterIssue(
      {required int number,
      required String title,
      required JsonState state,
      required String body,
      JsonUser? assignee,
      List<JsonUser> assignees,
      required int comments,
      @JsonKey(name: 'created_at') required DateTime createdAt,
      JsonPullRequest? pullRequest,
      List<JsonLabel> labels}) = _$_JsonFlutterIssue;

  factory _JsonFlutterIssue.fromJson(Map<String, dynamic> json) =
      _$_JsonFlutterIssue.fromJson;

  @override
  int get number => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  JsonState get state => throw _privateConstructorUsedError;
  @override
  String get body => throw _privateConstructorUsedError;
  @override
  JsonUser? get assignee => throw _privateConstructorUsedError;
  @override
  List<JsonUser> get assignees => throw _privateConstructorUsedError;
  @override
  int get comments => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  JsonPullRequest? get pullRequest => throw _privateConstructorUsedError;
  @override
  List<JsonLabel> get labels => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JsonFlutterIssueCopyWith<_JsonFlutterIssue> get copyWith =>
      throw _privateConstructorUsedError;
}

JsonPullRequest _$JsonPullRequestFromJson(Map<String, dynamic> json) {
  return _JsonPullRequest.fromJson(json);
}

/// @nodoc
class _$JsonPullRequestTearOff {
  const _$JsonPullRequestTearOff();

  _JsonPullRequest call(
      {required String url,
      required String htmlUrl,
      required String diffUrl,
      required String patchUrl}) {
    return _JsonPullRequest(
      url: url,
      htmlUrl: htmlUrl,
      diffUrl: diffUrl,
      patchUrl: patchUrl,
    );
  }

  JsonPullRequest fromJson(Map<String, Object> json) {
    return JsonPullRequest.fromJson(json);
  }
}

/// @nodoc
const $JsonPullRequest = _$JsonPullRequestTearOff();

/// @nodoc
mixin _$JsonPullRequest {
  String get url => throw _privateConstructorUsedError;
  String get htmlUrl => throw _privateConstructorUsedError;
  String get diffUrl => throw _privateConstructorUsedError;
  String get patchUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonPullRequestCopyWith<JsonPullRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonPullRequestCopyWith<$Res> {
  factory $JsonPullRequestCopyWith(
          JsonPullRequest value, $Res Function(JsonPullRequest) then) =
      _$JsonPullRequestCopyWithImpl<$Res>;
  $Res call({String url, String htmlUrl, String diffUrl, String patchUrl});
}

/// @nodoc
class _$JsonPullRequestCopyWithImpl<$Res>
    implements $JsonPullRequestCopyWith<$Res> {
  _$JsonPullRequestCopyWithImpl(this._value, this._then);

  final JsonPullRequest _value;
  // ignore: unused_field
  final $Res Function(JsonPullRequest) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? htmlUrl = freezed,
    Object? diffUrl = freezed,
    Object? patchUrl = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      diffUrl: diffUrl == freezed
          ? _value.diffUrl
          : diffUrl // ignore: cast_nullable_to_non_nullable
              as String,
      patchUrl: patchUrl == freezed
          ? _value.patchUrl
          : patchUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$JsonPullRequestCopyWith<$Res>
    implements $JsonPullRequestCopyWith<$Res> {
  factory _$JsonPullRequestCopyWith(
          _JsonPullRequest value, $Res Function(_JsonPullRequest) then) =
      __$JsonPullRequestCopyWithImpl<$Res>;
  @override
  $Res call({String url, String htmlUrl, String diffUrl, String patchUrl});
}

/// @nodoc
class __$JsonPullRequestCopyWithImpl<$Res>
    extends _$JsonPullRequestCopyWithImpl<$Res>
    implements _$JsonPullRequestCopyWith<$Res> {
  __$JsonPullRequestCopyWithImpl(
      _JsonPullRequest _value, $Res Function(_JsonPullRequest) _then)
      : super(_value, (v) => _then(v as _JsonPullRequest));

  @override
  _JsonPullRequest get _value => super._value as _JsonPullRequest;

  @override
  $Res call({
    Object? url = freezed,
    Object? htmlUrl = freezed,
    Object? diffUrl = freezed,
    Object? patchUrl = freezed,
  }) {
    return _then(_JsonPullRequest(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      diffUrl: diffUrl == freezed
          ? _value.diffUrl
          : diffUrl // ignore: cast_nullable_to_non_nullable
              as String,
      patchUrl: patchUrl == freezed
          ? _value.patchUrl
          : patchUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JsonPullRequest implements _JsonPullRequest {
  const _$_JsonPullRequest(
      {required this.url,
      required this.htmlUrl,
      required this.diffUrl,
      required this.patchUrl});

  factory _$_JsonPullRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_JsonPullRequestFromJson(json);

  @override
  final String url;
  @override
  final String htmlUrl;
  @override
  final String diffUrl;
  @override
  final String patchUrl;

  @override
  String toString() {
    return 'JsonPullRequest(url: $url, htmlUrl: $htmlUrl, diffUrl: $diffUrl, patchUrl: $patchUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JsonPullRequest &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.htmlUrl, htmlUrl) ||
                const DeepCollectionEquality()
                    .equals(other.htmlUrl, htmlUrl)) &&
            (identical(other.diffUrl, diffUrl) ||
                const DeepCollectionEquality()
                    .equals(other.diffUrl, diffUrl)) &&
            (identical(other.patchUrl, patchUrl) ||
                const DeepCollectionEquality()
                    .equals(other.patchUrl, patchUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(htmlUrl) ^
      const DeepCollectionEquality().hash(diffUrl) ^
      const DeepCollectionEquality().hash(patchUrl);

  @JsonKey(ignore: true)
  @override
  _$JsonPullRequestCopyWith<_JsonPullRequest> get copyWith =>
      __$JsonPullRequestCopyWithImpl<_JsonPullRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JsonPullRequestToJson(this);
  }
}

abstract class _JsonPullRequest implements JsonPullRequest {
  const factory _JsonPullRequest(
      {required String url,
      required String htmlUrl,
      required String diffUrl,
      required String patchUrl}) = _$_JsonPullRequest;

  factory _JsonPullRequest.fromJson(Map<String, dynamic> json) =
      _$_JsonPullRequest.fromJson;

  @override
  String get url => throw _privateConstructorUsedError;
  @override
  String get htmlUrl => throw _privateConstructorUsedError;
  @override
  String get diffUrl => throw _privateConstructorUsedError;
  @override
  String get patchUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JsonPullRequestCopyWith<_JsonPullRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
