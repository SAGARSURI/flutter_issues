// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JsonUser _$_$_JsonUserFromJson(Map<String, dynamic> json) {
  return _$_JsonUser(
    login: json['login'] as String,
    id: json['id'] as int,
    nodeId: json['node_id'] as String,
    avatarUrl: json['avatar_url'] as String,
  );
}

Map<String, dynamic> _$_$_JsonUserToJson(_$_JsonUser instance) =>
    <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'node_id': instance.nodeId,
      'avatar_url': instance.avatarUrl,
    };
