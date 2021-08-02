import 'package:flutter/material.dart';
import 'package:flutter_issues/features/flutter_issues/di/flutter_issues_provider.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/sort_type.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const _initialPage = 1;
Future<T?> showSortBottomSheet<T>(BuildContext context) {
  final sortTypes = context.read(sortProvider.notifier).getSortTypes();
  return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(sortTypes[index].name),
              onTap: () {
                _sortIssuesBy(context, sortTypes[index]);
                Navigator.of(context, rootNavigator: true).pop(false);
              },
            );
          },
          separatorBuilder: (context, index) => const Divider(height: 1),
          itemCount: sortTypes.length,
        );
      });
}

void _sortIssuesBy(BuildContext context, SortType sort) {
  context.read(sortProvider.notifier).changeSortType(sort);
  final selectedIssueState = context.read(issueStateProvider);
  final selectedSortType = context.read(sortProvider);
  context
      .read(issuesProvider.notifier)
      .getIssues(selectedSortType, selectedIssueState, _initialPage);
}
