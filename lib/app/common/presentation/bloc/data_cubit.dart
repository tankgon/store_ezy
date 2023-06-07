import 'package:mulstore/all_file/all_file.dart';

abstract class RequestCubit<I, S extends RequestState<I>> extends Cubit<S> {
  RequestCubit({
    I? item,
  }) : super(
          RequestInitialState(data: RequestData(item: item)) as S,
        );

  Future<I> fetchApi();

  Future<void> fetchData() async {
    try {
      loading();
      final item = await fetchApi();
      loaded(item);
    } catch (e) {
      log(e.toString(), error: e);
      emit(RequestErrorState(data: state.data, error: e) as S);
    }
  }

  void loading() {
    emit(RequestLoadingState(data: state.data) as S);
  }

  void loaded(I item) {
    emit(RequestLoadedState(data: state.data) as S);
  }
}

class RequestData<T> {
  const RequestData({
    required this.item,
  });

  final T item;
}

abstract class RequestState<T> extends Equatable {
  const RequestState({
    required this.data,
  });

  final RequestData<T> data;
}

class RequestInitialState<T> extends RequestState<T> {
  const RequestInitialState({
    required super.data,
  });

  @override
  List<Object?> get props => [data];
}

class RequestLoadingState<T> extends RequestState<T> {
  const RequestLoadingState({
    required super.data,
  });

  @override
  List<Object?> get props => [data];
}

class RequestLoadedState<T> extends RequestState<T> {
  const RequestLoadedState({
    required super.data,
  });

  @override
  List<Object?> get props => [data];
}

class RequestErrorState<T> extends RequestState<T> {
  const RequestErrorState({
    required super.data,
    required this.error,
  });

  final Object error;

  @override
  List<Object?> get props => [data, error];
}
