import 'package:ez_store/all_file/all_file.dart';

part 'distributor_rating_state.dart';

class DistributorRatingCubit extends Cubit<DistributorRatingState> {
  DistributorRatingCubit({dynamic? item}) : super(DistributorRatingState(item: item));

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
          errorMsg: e.getServerErrorMsg(),
        ),
      );
    }
  }
}
