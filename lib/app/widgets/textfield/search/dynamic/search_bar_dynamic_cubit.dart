import 'package:ez_store/all_file/all_file.dart';

part 'search_bar_dynamic_state.dart';

class SearchBarDynamicCubit extends Cubit<SearchBarDynamicState> {
  SearchBarDynamicCubit() : super(const SearchBarDynamicState());

  String? get searchText => state.isActive ? state.searchText : null;

  bool get isActive => state.isActive;

  void onSearch(String? value) {
    emit(
      state.update(
        searchText: value,
      ),
    );
  }

  void onFocusChange({bool? hasFocus, required String search}) {
    if (search.isNotEmpty == state.isActive || search.isEmpty == !state.isActive) {
      return;
    }
    emit(
      state.update(
        isActive: search.isNotEmpty,
        searchText: search,
      ),
    );
  }

  void activeChange({required bool isActive}) {
    if (isActive == state.isActive) return;

    emit(
      state.update(
        isActive: isActive,
        searchText: isActive ? state.searchText : null,
      ),
    );
  }
}
