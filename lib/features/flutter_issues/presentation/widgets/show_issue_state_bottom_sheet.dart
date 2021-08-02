import 'package:flutter/material.dart';
import 'package:flutter_issues/features/flutter_issues/di/flutter_issues_provider.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/issue_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const _initialPage = 1;
Future<T?> showIssueStateBottomSheet<T>(BuildContext context) {
  final allStates = context.read(issueStateProvider.notifier).allStates();
  return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(allStates[index].name),
                onTap: () {
                  _filterIssuesBy(context, allStates[index]);
                  Navigator.of(context, rootNavigator: true).pop(false);
                },
              );
            },
            separatorBuilder: (context, index) => const Divider(height: 1),
            itemCount: allStates.length);
      });
}

void _filterIssuesBy(BuildContext context, IssueState currentState) {
  context.read(issueStateProvider.notifier).changeIssueState(currentState);
  final selectedIssueState = context.read(issueStateProvider);
  final selectedSortType = context.read(sortProvider);
  context
      .read(issuesProvider.notifier)
      .getIssues(selectedSortType, selectedIssueState, _initialPage);
}
