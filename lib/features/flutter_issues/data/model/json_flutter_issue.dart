import 'dart:convert';

import 'package:flutter_issues/features/flutter_issues/data/model/json_label.dart';
import 'package:flutter_issues/features/flutter_issues/data/model/json_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'json_flutter_issue.freezed.dart';
part 'json_flutter_issue.g.dart';

List<JsonFlutterIssue> jsonFlutterIssueFromJson(String str) =>
    List<JsonFlutterIssue>.from(json.decode(str).map((x) => JsonFlutterIssue.fromJson(x)));

String jsonFlutterIssueToJson(List<JsonFlutterIssue> data) =>
    json.encode(List<Map<String, dynamic>>.from(data.map((x) => x.toJson())));

@freezed
class JsonFlutterIssue with _$JsonFlutterIssue {
  const factory JsonFlutterIssue({
    required int number,
    required String title,
    required JsonState state,
    required String body,
    JsonUser? assignee,
    @Default(<JsonUser>[]) List<JsonUser> assignees,
    required int comments,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    JsonPullRequest? pullRequest,
    @Default(<JsonLabel>[]) List<JsonLabel> labels,
  }) = _JsonFlutterIssue;

  factory JsonFlutterIssue.fromJson(Map<String, dynamic> json) => _$JsonFlutterIssueFromJson(json);
}

@freezed
class JsonPullRequest with _$JsonPullRequest {
  const factory JsonPullRequest({
    required String url,
    required String htmlUrl,
    required String diffUrl,
    required String patchUrl,
  }) = _JsonPullRequest;

  factory JsonPullRequest.fromJson(Map<String, dynamic> json) => _$JsonPullRequestFromJson(json);
}

enum JsonState { open, closed, all }
