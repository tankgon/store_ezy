import 'package:ez_store/all_file/all_file.dart';

class BottomSheetSelectCubit<T> extends Cubit<T?> {
  BottomSheetSelectCubit() : super(null);

  void selectItem(T? item) {
    emit(item);
  }
}
