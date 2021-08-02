enum IssueState { open, closed, all }

extension StateExtension on IssueState {
  String get name {
    switch (this) {
      case IssueState.open:
        return 'open';
      case IssueState.closed:
        return 'closed';
      case IssueState.all:
        return 'all';
    }
  }
}
