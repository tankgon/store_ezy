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
      emit(state.copyWith(status: ItemStatus.error, error: e) as S);
    }
  }

  void loading() {
    emit(state.copyWith(status: ItemStatus.loading) as S);
  }

  void loaded(I? item) {
    emit(
      state.copyWith(
        item: item,
        status: ItemStatus.success,
      ) as S,
    );
  }
}

class RequestItemState<I> extends Equatable {
  const RequestItemState({
    this.status = ItemStatus.initial,
    this.item,
    this.error,
  });

  final ItemStatus status;
  final I? item;
  final Object? error;

  RequestItemState<I> copyWith({
    ItemStatus? status,
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
