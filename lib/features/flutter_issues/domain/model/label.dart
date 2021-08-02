import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'label.freezed.dart';

@freezed
class Label with _$Label {
  const factory Label.create({
    required String name,
    required Color color,
  }) = _Label;
}
