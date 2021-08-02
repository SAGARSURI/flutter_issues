import 'package:flutter/material.dart';
import 'package:flutter_issues/features/flutter_issues/di/flutter_issues_provider.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/flutter_issue.dart';
import 'package:flutter_issues/features/flutter_issues/presentation/constants.dart';
import 'package:flutter_issues/features/flutter_issues/presentation/widgets/flutter_issue_page_builder.dart';
import 'package:flutter_issues/features/flutter_issues/presentation/widgets/flutter_issues_widget.dart';
import 'package:flutter_issues/features/flutter_issues/presentation/widgets/show_issue_state_bottom_sheet.dart';
import 'package:flutter_issues/features/flutter_issues/presentation/widgets/show_sort_bottom_sheet.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FlutterIssuesScreen extends StatefulWidget {
  const FlutterIssuesScreen({
    Key? key,
    required this.routeToDetail,
  }) : super(key: key);

  final Function(BuildContext, FlutterIssue) routeToDetail;

  @override
  _FlutterIssuesScreenState createState() => _FlutterIssuesScreenState();
}

class _FlutterIssuesScreenState extends State<FlutterIssuesScreen> {
  void handleClick(String value, BuildContext context) {
    switch (value) {
      case sortLabel:
        showSortBottomSheet<void>(context);
        break;
      case filterLabel:
        showIssueStateBottomSheet<void>(context);
        break;
    }
  }

  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      final notifier = context.read(issuesProvider.notifier);
      final sort = context.read(sortProvider);
      final state = context.read(issueStateProvider);
      return notifier.getIssues(sort, state, notifier.pageNumber);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(issuesScreenTitle),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) => handleClick(value, context),
            itemBuilder: (BuildContext context) {
              return {sortLabel, filterLabel}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: FlutterIssuesPageBuilder(onNextPageRequested: () {
        _paginateIssues(context);
      }, builder: (_, controller) {
        return Consumer(builder: (_, watch, __) {
          final viewModel = watch(issuesProvider);
          return viewModel.when(loading: () {
            return Center(
                child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                  Theme.of(context).colorScheme.onPrimary),
            ));
          }, success: (data) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: _issuesListView(controller, data, context),
            );
          }, error: (error) {
            return error.when(genericError: () {
              return const Center(child: Text(genericErrorMessage));
            }, connectivityError: () {
              return const Center(child: Text(connectivityErrorMessage));
            });
          });
        });
      }),
    );
  }

  FlutterIssuesWidget _issuesListView(
    ScrollController controller,
    List<FlutterIssue> data,
    BuildContext context,
  ) {
    return FlutterIssuesWidget(
        controller: controller,
        data: data,
        onTap: (issue) {
          widget.routeToDetail(context, issue);
        });
  }

  void _paginateIssues(BuildContext context) {
    final sort = context.read(sortProvider);
    final issueState = context.read(issueStateProvider);
    final flutterIssues = context.read(issuesProvider.notifier)
      ..pageNumber += 1;
    flutterIssues.getIssues(sort, issueState, flutterIssues.pageNumber);
  }
}
