import 'package:mulstore/all_file/all_file.dart';

part 'select_product_variant_state.dart';

class SelectProductVariantCubit extends RequestCubit<SelectProductVariantState> {
  SelectProductVariantCubit({dynamic? item}) : super(SelectProductVariantState(item: item));

  FutureOr<void> fetchItem() async {
    emit(state.copyWith(status: ItemDefaultStatus.loading));
    try {
      // final item = await Get.find<ApproveRepo>().getProgramForApprove(programID: item.programID ?? '');
      emit(
        state.copyWith(
          status: ItemDefaultStatus.success,
          // item: item,
        )
      );
    } catch (e) {
      log(e.toString(), error: e);
      emit(
        state.copyWith(
          status: ItemDefaultStatus.error,
          error: e,
        ),
      );
    }
  }
}
