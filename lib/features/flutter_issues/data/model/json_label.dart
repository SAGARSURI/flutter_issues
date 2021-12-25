import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'json_label.freezed.dart';
part 'json_label.g.dart';

List<JsonLabel> jsonLabelFromJson(String str) =>
    List<JsonLabel>.from(json.decode(str).map((x) => JsonLabel.fromJson(x)));

String jsonLabelToJson(List<JsonLabel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class JsonLabel with _$JsonLabel {
  const factory JsonLabel({
    required int id,
    @JsonKey(name: 'node_id') required String nodeId,
    required String name,
    required String color,
    @JsonKey(name: 'default') required bool labelDefault,
  }) = _JsonLabel;

  factory JsonLabel.fromJson(Map<String, dynamic> json) => _$JsonLabelFromJson(json);
}
