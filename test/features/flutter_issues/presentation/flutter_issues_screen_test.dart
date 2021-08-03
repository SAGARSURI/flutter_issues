import 'package:flutter/material.dart';
import 'package:flutter_issues/features/flutter_issues/di/flutter_issues_provider.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/flutter_issue.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/flutter_issue_error.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/issue_state.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/sort_type.dart';
import 'package:flutter_issues/features/flutter_issues/domain/repository/flutter_issue_repository.dart';
import 'package:flutter_issues/features/flutter_issues/domain/usecase/flutter_issue_usecase.dart';
import 'package:flutter_issues/features/flutter_issues/presentation/constants.dart';
import 'package:flutter_issues/features/flutter_issues/presentation/flutter_issues_screen.dart';
import 'package:flutter_issues/features/flutter_issues/presentation/widgets/flutter_issues_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockRepository extends Mock implements FlutterIssueRepository {}

void main() {
  final _mockRepository = MockRepository();
  testWidgets('Display issues list', (WidgetTester tester) async {
    when(() => _mockRepository.issues(sort: 'created', state: 'open', page: 1))
        .thenAnswer((invocation) => Future.value(Either.of(_flutterIssues)));

    await tester.pumpWidget(_testableWidget(_mockRepository));
    await tester.pumpAndSettle();

    expect(find.byType(FlutterIssuesWidget), findsOneWidget);
  });

  testWidgets('Display retry on connectivity error',
      (WidgetTester tester) async {
    when(() => _mockRepository.issues(sort: 'created', state: 'open', page: 1))
        .thenAnswer((invocation) => Future.value(
            Either.left(const FlutterIssueError.connectivityError())));

    await tester.pumpWidget(_testableWidget(_mockRepository));
    await tester.pumpAndSettle();

    expect(find.byType(ElevatedButton), findsOneWidget);
  });

  testWidgets('Display list by sort type as comments',
      (WidgetTester tester) async {
    when(() => _mockRepository.issues(sort: 'created', state: 'open', page: 1))
        .thenAnswer((invocation) =>
            Future.value(Future.value(Either.of(_flutterIssues))));

    await tester.pumpWidget(_testableWidget(_mockRepository));
    await tester.pumpAndSettle();

    expect(find.byType(FlutterIssuesWidget), findsOneWidget);

    expect(find.byKey(const ValueKey(menuButtonKey)), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey(menuButtonKey)));
    await tester.pumpAndSettle();

    expect(find.byKey(const ValueKey(sortLabel)), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey(sortLabel)));
    await tester.pumpAndSettle();

    when(() => _mockRepository.issues(sort: 'comments', state: 'open', page: 1))
        .thenAnswer((invocation) =>
            Future.value(Future.value(Either.of(_flutterIssues))));

    expect(find.byKey(ValueKey(SortType.comments.name)), findsOneWidget);
    await tester.tap(find.byKey(ValueKey(SortType.comments.name)));
    await tester.pumpAndSettle();

    expect(find.byType(FlutterIssuesWidget), findsOneWidget);
  });
}

ProviderScope _testableWidget(MockRepository _mockRepository) {
  return ProviderScope(
    overrides: [
      useCaseProvider.overrideWithProvider(Provider((ref) {
        final useCase = FlutterIssueUseCase(_mockRepository);
        return useCase;
      }))
    ],
    child: MaterialApp(
      home: FlutterIssuesScreen(routeToDetail: (context, issue) {}),
    ),
  );
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
