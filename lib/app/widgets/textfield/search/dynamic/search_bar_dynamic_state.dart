part of 'search_bar_dynamic_cubit.dart';

class SearchBarDynamicState extends Equatable {

  final bool isActive;
  final String? searchText;

  @override
  List<Object?> get props => [ isActive, searchText ];
  
  SearchBarDynamicState update({
    bool? isActive,
    String? searchText,
  }) {
    return SearchBarDynamicState(
      isActive: isActive ?? this.isActive,
      searchText: searchText,
    );
  }

//<editor-fold desc="Data Methods">

  const SearchBarDynamicState({
    this.isActive = false,
    this.searchText,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SearchBarDynamicState &&
          runtimeType == other.runtimeType &&
          isActive == other.isActive &&
          searchText == other.searchText);

  @override
  int get hashCode => isActive.hashCode ^ searchText.hashCode;

  @override
  String toString() {
    return 'SearchBarDynamicState{' +
        ' isActive: $isActive,' +
        ' searchText: $searchText,' +
        '}';
  }

  SearchBarDynamicState copyWith({
    bool? isActive,
    String? searchText,
  }) {
    return SearchBarDynamicState(
      isActive: isActive ?? this.isActive,
      searchText: searchText ?? this.searchText,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'isActive': this.isActive,
      'searchText': this.searchText,
    };
  }

  factory SearchBarDynamicState.fromMap(Map<String, dynamic> map) {
    return SearchBarDynamicState(
      isActive: map['isActive'] as bool,
      searchText: map['searchText'] as String,
    );
  }

//</editor-fold>
}
