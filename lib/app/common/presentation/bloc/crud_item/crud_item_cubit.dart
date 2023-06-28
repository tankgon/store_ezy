import 'package:mulstore/all_file/all_file.dart';

abstract class CrudItemCubit<I, S extends CrudItemState<I>> extends RequestItemCubit<I, S> {
  CrudItemCubit(
    super.initialState, {
    this.addItemFuture,
    this.updateItemFuture,
    this.removeItemFuture,
  });

  final Future<I> Function(I item)? addItemFuture;
  final Future<I> Function(I item)? updateItemFuture;
  final Future<I> Function(I item)? removeItemFuture;

  Future<void> addItem(I item) async {
    if (addItemFuture == null) {
      return;
    }
    try {
      loading();
      final rs = await addItemFuture!(item);
      loaded(rs);
    } catch (e) {
      if (e is Error) {
        log(e.toString(), error: e, stackTrace: e.stackTrace);
      } else {
        log(e.toString(), error: e);
      }
      emit(state.copyWith(status: ItemStatus.error, error: e) as S);
    }
  }

  Future<void> updateItem(I item) async {
    if (updateItemFuture == null) {
      return;
    }
    try {
      loading();
      final rs = await updateItemFuture!(item);
      loaded(rs);
    } catch (e) {
      if (e is Error) {
        log(e.toString(), error: e, stackTrace: e.stackTrace);
      } else {
        log(e.toString(), error: e);
      }
      emit(state.copyWith(status: ItemStatus.error, error: e) as S);
    }
  }

  Future<void> removeItem(I item) async {
    if (removeItemFuture == null) {
      return;
    }
    try {
      loading();
      final rs = await removeItemFuture!(item);
      loaded(rs);
    } catch (e) {
      if (e is Error) {
        log(e.toString(), error: e, stackTrace: e.stackTrace);
      } else {
        log(e.toString(), error: e);
      }
      emit(state.copyWith(status: ItemStatus.error, error: e) as S);
    }
  }
}

class CrudItemState<I> extends RequestItemState<I> {
  const CrudItemState({
    super.status = ItemStatus.initial,
    super.item,
    super.error,
  });
}
