import 'package:ez_store/all_file/all_file.dart';

class FilterDataCubit<T> extends Cubit<FilterDataState<T>> {
  FilterDataCubit({this.checkEqualEmpty, this.initial}) : super(FilterDataState<T>(data: initial));

  final T? initial;
  final bool Function(T? currentValue)? checkEqualEmpty;

  void update(T? data) {
    emit(state.copyWith(
      data: data,
    ));
  }

  void updateHasChange({bool hasChange = true}) {
    if (hasChange != state.hasChange) {
      emit(
        state.copyWith(
          hasChange: hasChange,
        ),
      );
    }
  }

  void reset() {
    emit(state.clear);
  }

  bool get isActive => state.data != null && (checkEqualEmpty?.call(state.data) ?? true);
}

class FilterDataState<T> {
  const FilterDataState({
    this.data,
    this.hasChange = false,
  });

  final T? data;
  final bool hasChange;

  FilterDataState<T> get clear => FilterDataState<T>(
        data: null,
        hasChange: false,
      );

//<editor-fold desc="Data Methods">

  @override
  bool operator ==(Object other) => identical(this, other) || (other is FilterDataState && runtimeType == other.runtimeType && data == other.data && hasChange == other.hasChange);

  @override
  int get hashCode => data.hashCode ^ hasChange.hashCode;

  @override
  String toString() {
    return 'FilterDataState{' + ' data: $data,' + ' hasChange: $hasChange,' + '}';
  }

  FilterDataState<T> copyWith({
    T? data,
    bool? hasChange,
  }) {
    return FilterDataState(
      data: data ?? this.data,
      hasChange: hasChange ?? this.hasChange,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'data': this.data,
      'hasChange': this.hasChange,
    };
  }

  factory FilterDataState.fromMap(Map<String, dynamic> map) {
    return FilterDataState(
      data: map['data'] as T,
      hasChange: map['hasChange'] as bool,
    );
  }

//</editor-fold>
}
