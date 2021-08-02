//ignore_for_file: lines_longer_than_80_chars
import 'package:flutter_issues/features/flutter_issues/domain/model/flutter_issue.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/issue_state.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/sort_type.dart';
import 'package:flutter_issues/features/flutter_issues/domain/repository/flutter_issue_repository.dart';
import 'package:flutter_issues/features/flutter_issues/domain/usecase/flutter_issue_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockRepository extends Mock implements FlutterIssueRepository {}

void main() {
  final _mockRepository = MockRepository();
  final _sut = FlutterIssueUseCase(_mockRepository);
  test(
      'call SHOULD return only list of issues, WHEN list contains pull request also',
      () async {
    when(() => _mockRepository.issues(sort: 'created', state: 'open', page: 1))
        .thenAnswer((invocation) =>
            Future.value(Either.of(_flutterIssuesWithPullRequest)));

    final result = await _sut(SortType.created, IssueState.open, 1);

    result.match(
        (l) => null,
        (r) => [
              FlutterIssue.create(
                title: 'title',
                body: 'body',
                number: 2,
                comments: 1,
                currentState: IssueState.open,
                createdAt: DateTime.utc(2021, 07, 30),
                isPullRequest: false,
                label: [],
              )
            ]);
  });
}

final _flutterIssuesWithPullRequest = [
  FlutterIssue.create(
    title: 'title',
    body: 'body',
    number: 1,
    comments: 1,
    currentState: IssueState.open,
    createdAt: DateTime.utc(2021, 07, 30),
    isPullRequest: true,
    label: [],
  ),
  FlutterIssue.create(
    title: 'title',
    body: 'body',
    number: 2,
    comments: 1,
    currentState: IssueState.open,
    createdAt: DateTime.utc(2021, 07, 30),
    isPullRequest: false,
    label: [],
  )
];
