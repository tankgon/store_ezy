import 'package:ez_store/all_file/all_file.dart';

part 'distributor_item_state.dart';

class DistributorItemCubit extends Cubit<DistributorItemState> {
  DistributorItemCubit({dynamic? item}) : super(DistributorItemState(item: item));

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
      logger.e(e);
      emit(
        state.copyWith(
          status: ItemDetailStatus.error,
          errorMsg: e.getServerErrorMsg(),
        ),
      );
    }
  }
}
