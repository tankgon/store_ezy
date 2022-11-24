import 'package:ez_store/all_file/all_file.dart';

part 'otp_verify_state.dart';

class OtpVerifyCubit extends Cubit<OtpVerifyState> {
  OtpVerifyCubit() : super(const OtpVerifyState());

  FutureOr<void> fetchItem() async {
    emit(state.copyWith(status: ItemDetailStatus.loading));
    try {
      // final data = await Get.find<ApproveRepo>().getProgramForApprove(programID: item.programID ?? '');
      emit(state.copyWith(status: ItemDetailStatus.success));
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
