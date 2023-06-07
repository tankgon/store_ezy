import 'package:mulstore/all_file/all_file.dart';

abstract class RequestItemCubit<I, S extends RequestItemState<I>>
    extends Cubit<S> {
  RequestItemCubit(super.initialState);

  Future<I?> fetchApi();

  Future<void> fetchItem() async {
    try {
      loading();
      final item = await fetchApi();
      loaded(item);
    } catch (e) {
      if (e is Error) {
        log(e.toString(), error: e, stackTrace: e.stackTrace);
      } else {
        log(e.toString(), error: e);
      }
      emit(state.copyWith(status: ItemDefaultStatus.error, error: e) as S);
    }
  }

  void loading() {
    emit(state.copyWith(status: ItemDefaultStatus.loading) as S);
  }

  void loaded(I? item) {
    emit(
      state.copyWith(
        item: item,
        status: ItemDefaultStatus.success,
      ) as S,
    );
  }
}

class RequestItemState<I> extends Equatable {
  const RequestItemState({
    this.status = ItemDefaultStatus.initial,
    this.item,
    this.error,
  });

  final ItemDefaultStatus status;
  final I? item;
  final Object? error;

  RequestItemState<I> copyWith({
    ItemDefaultStatus? status,
    I? item,
    Object? error,
  }) {
    return RequestItemState<I>(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [status, item, error];
}
