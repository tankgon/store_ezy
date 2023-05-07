import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user/self.dart';

part 'user_info_state.dart';

class UserInfoCubit extends RequestCubit<UserInfoState> {
  UserInfoCubit({UserEntity? item}) : super(UserInfoState(item: item));

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
