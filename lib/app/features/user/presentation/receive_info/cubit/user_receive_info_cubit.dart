import 'package:ez_store/all_file/all_file.dart';

part 'user_receive_info_state.dart';

class UserReceiveInfoCubit extends Cubit<UserReceiveInfoState> {
  UserReceiveInfoCubit({dynamic? item}) : super(UserReceiveInfoState(item: item));

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
