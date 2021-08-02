import 'package:flutter_issues/features/flutter_issues/domain/model/sort_type.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SortTypeNotifier extends StateNotifier<SortType> {
  SortTypeNotifier() : super(SortType.created);

  List<SortType> getSortTypes() {
    return SortType.values;
  }

  void changeSortType(SortType sortType) {
    state = sortType;
  }
}
