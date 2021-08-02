import 'package:flutter/widgets.dart';
import 'package:flutter_issues/features/flutter_issues/data/model/json_flutter_issue.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/flutter_issue.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/issue_state.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/label.dart';

List<FlutterIssue> mapJsonFlutterIssues(List<JsonFlutterIssue> issues) {
  return issues
      .map(
        (jsonFlutterIssue) => FlutterIssue.create(
          title: jsonFlutterIssue.title,
          body: jsonFlutterIssue.body,
          number: jsonFlutterIssue.number,
          comments: jsonFlutterIssue.comments,
          currentState: _getCurrentState(jsonFlutterIssue.state),
          createdAt: jsonFlutterIssue.createdAt,
          isPullRequest: jsonFlutterIssue.pullRequest != null,
          label: jsonFlutterIssue.labels
              .map((e) => Label.create(
                    name: e.name,
                    color: Color(
                      int.parse('0xFF${e.color}'),
                    ),
                  ))
              .toList(),
        ),
      )
      .toList();
}

IssueState _getCurrentState(JsonState state) {
  switch (state) {
    case JsonState.open:
      return IssueState.open;
    case JsonState.closed:
      return IssueState.closed;
    case JsonState.all:
      return IssueState.all;
  }
}
