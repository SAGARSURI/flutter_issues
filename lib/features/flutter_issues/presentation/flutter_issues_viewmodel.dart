import 'package:flutter_issues/features/flutter_issues/domain/model/flutter_issue.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/flutter_issue_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flutter_issues_viewmodel.freezed.dart';

@freezed
class FlutterIssuesViewModel with _$FlutterIssuesViewModel {
  const factory FlutterIssuesViewModel.loading() = _Loading;
  const factory FlutterIssuesViewModel.success(
      List<FlutterIssue> flutterIssues) = _Success;
  const factory FlutterIssuesViewModel.error(FlutterIssueError error) = _Error;
}
