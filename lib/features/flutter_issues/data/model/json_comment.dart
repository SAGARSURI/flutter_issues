import 'dart:convert';

import 'package:flutter_issues/features/flutter_issues/data/model/json_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'json_comment.freezed.dart';
part 'json_comment.g.dart';

List<JsonComment> jsonCommentFromJson(String str) => List<JsonComment>.from(
    json.decode(str).map((x) => JsonComment.fromJson(x)));

String jsonCommentToJson(List<JsonComment> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class JsonComment with _$JsonComment {
  const factory JsonComment({
    required int id,
    @JsonKey(name: 'node_id')
    required String nodeId,
    required String body,
    required JsonUser user,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @JsonKey(name: 'updated_at')
    required DateTime updatedAt,
  }) = _JsonComment;

  factory JsonComment.fromJson(Map<String, dynamic> json) =>
      _$JsonCommentFromJson(json);
}
