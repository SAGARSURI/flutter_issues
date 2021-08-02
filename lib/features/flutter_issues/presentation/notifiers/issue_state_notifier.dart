import 'package:flutter_issues/features/flutter_issues/domain/model/issue_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IssueStateNotifier extends StateNotifier<IssueState> {
  IssueStateNotifier() : super(IssueState.open);

  List<IssueState> allStates() => IssueState.values;

  void changeIssueState(IssueState issueState) {
    state = issueState;
  }
}
