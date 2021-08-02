// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_label.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JsonLabel _$_$_JsonLabelFromJson(Map<String, dynamic> json) {
  return _$_JsonLabel(
    id: json['id'] as int,
    nodeId: json['node_id'] as String,
    name: json['name'] as String,
    color: json['color'] as String,
    labelDefault: json['default'] as bool,
  );
}

Map<String, dynamic> _$_$_JsonLabelToJson(_$_JsonLabel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'name': instance.name,
      'color': instance.color,
      'default': instance.labelDefault,
    };
