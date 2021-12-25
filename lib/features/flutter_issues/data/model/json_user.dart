import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'json_user.freezed.dart';
part 'json_user.g.dart';

List<JsonUser> jsonUserFromJson(String str) => List<JsonUser>.from(json.decode(str).map((x) => JsonUser.fromJson(x)));

String jsonUserToJson(List<JsonUser> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class JsonUser with _$JsonUser {
  const factory JsonUser({
    required String login,
    required int id,
    @JsonKey(name: 'node_id') required String nodeId,
    @JsonKey(name: 'avatar_url') required String avatarUrl,
  }) = _JsonUser;

  factory JsonUser.fromJson(Map<String, dynamic> json) => _$JsonUserFromJson(json);
}
