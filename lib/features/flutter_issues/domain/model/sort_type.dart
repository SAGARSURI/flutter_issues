enum SortType { created, updated, comments }

extension SortTypeExtension on SortType {
  String get name {
    switch (this) {
      case SortType.created:
        return 'created';
      case SortType.updated:
        return 'updated';
      case SortType.comments:
        return 'comments';
    }
  }
}
