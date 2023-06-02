import 'package:mulstore/all_file/all_file.dart';

class RequestCubit<T extends RequestState> extends Cubit<T> {
  RequestCubit(super.initialState);
}

abstract class RequestState extends Equatable {
  const RequestState({
    this.status = ItemDefaultStatus.initial,
    this.error,
  });

  final ItemDefaultStatus status;
  final Object? error;
}
