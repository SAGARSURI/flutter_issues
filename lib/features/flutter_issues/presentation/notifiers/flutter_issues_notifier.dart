import 'dart:developer';

import 'package:flutter_issues/features/flutter_issues/domain/model/flutter_issue.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/issue_state.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/sort_type.dart';
import 'package:flutter_issues/features/flutter_issues/domain/usecase/flutter_issue_usecase.dart';
import 'package:flutter_issues/features/flutter_issues/presentation/flutter_issues_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FlutterIssuesNotifier extends StateNotifier<FlutterIssuesViewModel> {
  FlutterIssuesNotifier(this._useCase)
      : super(const FlutterIssuesViewModel.loading());
  final FlutterIssueUseCase _useCase;
  var pageNumber = 1;

  final List<FlutterIssue> _issuesList = [];

  Future<void> getIssues(
    SortType sortType,
    IssueState currentState,
    int page,
  ) async {
    pageNumber = page;
    if (pageNumber == 1 && state != const FlutterIssuesViewModel.loading()) {
      state = const FlutterIssuesViewModel.loading();
    }
    final result = await _useCase(sortType, currentState, page);
    result.match((l) {
      state = FlutterIssuesViewModel.error(l);
    }, (r) {
      if (r.isEmpty) {
        state = FlutterIssuesViewModel.success(_issuesList);
      } else {
        if (pageNumber == 1) _issuesList.clear();
        state = FlutterIssuesViewModel.success(_issuesList..addAll(r));
      }
      log('$pageNumber pageNumber');
    });
  }
}
