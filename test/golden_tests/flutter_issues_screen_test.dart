import 'package:flutter/material.dart';
import 'package:flutter_issues/features/flutter_issues/di/flutter_issues_provider.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/flutter_issue.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/flutter_issue_error.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/issue_state.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/label.dart';
import 'package:flutter_issues/features/flutter_issues/domain/repository/flutter_issue_repository.dart';
import 'package:flutter_issues/features/flutter_issues/domain/usecase/flutter_issue_usecase.dart';
import 'package:flutter_issues/features/flutter_issues/presentation/flutter_issues_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';

class MockRepository extends Mock implements FlutterIssueRepository {}

void main() {
  final _mockRepository = MockRepository();
  setUpAll(() async {
    await loadAppFonts();
  });

  ProviderScope _testableWidget(MockRepository _mockRepository) {
    return ProviderScope(
      overrides: [
        useCaseProvider.overrideWithProvider(Provider((ref) {
          final useCase = FlutterIssueUseCase(_mockRepository);
          return useCase;
        }))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FlutterIssuesScreen(routeToDetail: (context, issue) {}),
      ),
    );
  }

  ProviderScope _widget() {
    return _testableWidget(_mockRepository);
  }

  testGoldens('flutter issues widget', (tester) async {
    when(() => _mockRepository.issues(sort: 'created', state: 'open', page: 1))
        .thenAnswer((invocation) => Future.value(Either.of(_flutterIssues)));
    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [Device.phone])
      ..addScenario(widget: _widget());

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'flutter_issues_widget');
  });

  testGoldens('connectivity error screen', (tester) async {
    when(() => _mockRepository.issues(sort: 'created', state: 'open', page: 1))
        .thenAnswer((invocation) => Future.value(
            Either.left(const FlutterIssueError.connectivityError())));

    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [Device.phone])
      ..addScenario(widget: _widget());

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'connectivity_error_screen');
  });

  testGoldens('generic error screen', (tester) async {
    when(() => _mockRepository.issues(sort: 'created', state: 'open', page: 1))
        .thenAnswer((invocation) => Future.value(
        Either.left(const FlutterIssueError.genericError())));

    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [Device.phone])
      ..addScenario(widget: _widget());

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'generic_error_screen');
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
    label: [
      const Label.create(
        name: 'in triage',
        color: Color(0xFF000000),
      ),
    ],
  ),
];
