import 'package:flutter_issues/features/flutter_issues/domain/model/issue_state.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/label.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flutter_issue.freezed.dart';

@freezed
class FlutterIssue with _$FlutterIssue {
  factory FlutterIssue.create({
    required String title,
    required String body,
    required int number,
    required int comments,
    required IssueState currentState,
    required DateTime createdAt,
    required bool isPullRequest,
    required List<Label> label,
  }) = _FlutterIssue;
}
