import 'package:mulstore/all_file/all_file.dart';

class DataCubit<T extends DataState> extends Cubit<T> {
  DataCubit(super.initialState);
}

abstract class DataState extends Equatable {
  const DataState();
}
