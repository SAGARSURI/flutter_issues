import 'package:flutter_issues/features/flutter_issues/domain/model/flutter_issue.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/flutter_issue_error.dart';
import 'package:fpdart/fpdart.dart';

abstract class FlutterIssueRepository {
  Future<Either<FlutterIssueError, List<FlutterIssue>>> issues({
    required String sort,
    required String state,
    required int page,
    List<String> label,
  });
}
