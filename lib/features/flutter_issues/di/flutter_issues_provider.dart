import 'package:flutter_issues/features/flutter_issues/data/mapper/map_json_flutter_issues.dart';
import 'package:flutter_issues/features/flutter_issues/data/repository/flutter_issue_repository_impl.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/issue_state.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/sort_type.dart';
import 'package:flutter_issues/features/flutter_issues/domain/usecase/flutter_issue_usecase.dart';
import 'package:flutter_issues/features/flutter_issues/presentation/flutter_issues_viewmodel.dart';
import 'package:flutter_issues/features/flutter_issues/presentation/notifiers/flutter_issues_notifier.dart';
import 'package:flutter_issues/features/flutter_issues/presentation/notifiers/issue_state_notifier.dart';
import 'package:flutter_issues/features/flutter_issues/presentation/notifiers/sort_type_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:network/network.dart';

final useCaseProvider = Provider<FlutterIssueUseCase>((ref) {
  final client = HttpClientProvider.instance.getClient;
  final repository = FlutterIssueRepositoryImpl(client, mapJsonFlutterIssues);
  final useCase = FlutterIssueUseCase(repository);
  return useCase;
});

final sortProvider = StateNotifierProvider<SortTypeNotifier, SortType>((ref) {
  return SortTypeNotifier();
});

final issueStateProvider =
    StateNotifierProvider<IssueStateNotifier, IssueState>((ref) {
  return IssueStateNotifier();
});

final issuesProvider =
    StateNotifierProvider<FlutterIssuesNotifier, FlutterIssuesViewModel>((ref) {
  final useCase = ref.watch(useCaseProvider);
  return FlutterIssuesNotifier(useCase);
});
