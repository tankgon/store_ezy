import 'package:{{{pathPackage}}}/all_file/all_file.dart';

part '{{feature_name.snakeCase()}}_state.dart';

class {{feature_name.pascalCase()}}Cubit extends RequestCubit<{{feature_name.pascalCase()}}State> {
  {{feature_name.pascalCase()}}Cubit({dynamic? item}) : super({{feature_name.pascalCase()}}State(item: item));

  FutureOr<void> fetchItem() async {
    emit(state.copyWith(status: ItemDetailStatus.loading));
    try {
      // final item = await Get.find<ApproveRepo>().getProgramForApprove(programID: item.programID ?? '');
      emit(
        state.copyWith(
          status: ItemDetailStatus.success,
          // item: item,
        )
      );
    } catch (e) {
      log(e.toString(), error: e);
      emit(
        state.copyWith(
          status: ItemDetailStatus.error,
          error: e,
        ),
      );
    }
  }
}
