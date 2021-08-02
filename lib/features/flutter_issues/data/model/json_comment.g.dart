// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JsonComment _$_$_JsonCommentFromJson(Map<String, dynamic> json) {
  return _$_JsonComment(
    id: json['id'] as int,
    nodeId: json['node_id'] as String,
    body: json['body'] as String,
    user: JsonUser.fromJson(json['user'] as Map<String, dynamic>),
    createdAt: DateTime.parse(json['created_at'] as String),
    updatedAt: DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$_$_JsonCommentToJson(_$_JsonComment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'body': instance.body,
      'user': instance.user,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
