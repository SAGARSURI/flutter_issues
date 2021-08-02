import 'package:flutter_issues/features/flutter_issues/domain/model/flutter_issue.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/flutter_issue_error.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/issue_state.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/sort_type.dart';
import 'package:flutter_issues/features/flutter_issues/domain/usecase/flutter_issue_usecase.dart';
import 'package:flutter_issues/features/flutter_issues/presentation/flutter_issues_viewmodel.dart';
import 'package:flutter_issues/features/flutter_issues/presentation/notifiers/flutter_issues_notifier.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockUseCase extends Mock implements FlutterIssueUseCase {}

void main() {
  final _mockUseCase = MockUseCase();
  late FlutterIssuesNotifier _sut;

  setUp(() {
    _sut = FlutterIssuesNotifier(_mockUseCase);
  });

  test('getIssues SHOULD emit success state, WHEN request is successful',
      () async {
    when(() => _mockUseCase(SortType.created, IssueState.open, any()))
        .thenAnswer((invocation) => Future.value(Either.of(_flutterIssues)));
    final actualValues = [];
    _sut.addListener(actualValues.add);

    await _sut.getIssues(SortType.created, IssueState.open, 1);

    expect(actualValues, [
      const FlutterIssuesViewModel.loading(),
      FlutterIssuesViewModel.success(_flutterIssues)
    ]);
  });

  test('getIssues SHOULD emit error state, WHEN request is unsuccessful',
      () async {
    when(() => _mockUseCase(SortType.created, IssueState.open, any()))
        .thenAnswer((invocation) =>
            Future.value(Either.left(const FlutterIssueError.genericError())));
    final actualValues = [];
    _sut.addListener(actualValues.add);

    await _sut.getIssues(SortType.created, IssueState.open, 1);

    expect(actualValues, [
      const FlutterIssuesViewModel.loading(),
      const FlutterIssuesViewModel.error(FlutterIssueError.genericError())
    ]);
  });

  test('getIssues SHOULD return 2nd page result, WHEN 2nd page is requested',
      () async {
    when(() => _mockUseCase(SortType.created, IssueState.open, any()))
        .thenAnswer((invocation) => Future.value(Either.of(_flutterIssues)));
    final actualValues = [];
    _sut.addListener(actualValues.add);

    await _sut.getIssues(SortType.created, IssueState.open, 1);
    await _sut.getIssues(SortType.created, IssueState.open, 2);

    final totalList = [..._flutterIssues, ..._flutterIssues];
    expect(actualValues, [
      const FlutterIssuesViewModel.loading(),
      FlutterIssuesViewModel.success(
          totalList), //This is coz we are maintaining since instance of list
      FlutterIssuesViewModel.success(totalList),
    ]);
  });
}

final _flutterIssues = [
  FlutterIssue.create(
    title: 'title',
    body: 'body',
    number: 1,
    comments: 1,
    currentState: IssueState.open,
    createdAt: DateTime.utc(2021, 07, 30),
    isPullRequest: false,
    label: [],
  ),
];
