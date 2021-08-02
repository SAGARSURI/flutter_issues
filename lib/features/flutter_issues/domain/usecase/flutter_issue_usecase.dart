import 'package:flutter_issues/features/flutter_issues/domain/model/flutter_issue.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/flutter_issue_error.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/issue_state.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/sort_type.dart';
import 'package:flutter_issues/features/flutter_issues/domain/repository/flutter_issue_repository.dart';
import 'package:fpdart/fpdart.dart';

class FlutterIssueUseCase {
  FlutterIssueUseCase(this._repository);
  final FlutterIssueRepository _repository;
  Future<Either<FlutterIssueError, List<FlutterIssue>>> call(
    SortType sortType,
    IssueState currentState,
    int page,
  ) async {
    final result = await _repository.issues(
      sort: sortType.name,
      state: currentState.name,
      page: page,
    );
    return result.map((flutterIssues) => flutterIssues
        .where((flutterIssue) => !flutterIssue.isPullRequest)
        .toList());
  }
}
