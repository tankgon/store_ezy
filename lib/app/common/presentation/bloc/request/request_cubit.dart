import 'package:mulstore/all_file/all_file.dart';

@Deprecated('Please use RequestItemCubit instead')
class RequestCubit<T extends RequestState> extends Cubit<T> {
  RequestCubit(super.initialState);
}

abstract class RequestState extends Equatable {
  const RequestState({
    this.status = ItemStatus.initial,
    this.error,
  });

  final ItemStatus status;
  final Object? error;
}
