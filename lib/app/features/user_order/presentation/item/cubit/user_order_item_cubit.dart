import 'package:mulstore/all_file/all_file.dart';

part 'user_order_item_state.dart';

class UserOrderItemCubit extends Cubit<UserOrderItemState> {
  UserOrderItemCubit({dynamic? item}) : super(UserOrderItemState(item: item));

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
