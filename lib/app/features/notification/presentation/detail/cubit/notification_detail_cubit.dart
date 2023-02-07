import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/notification/data/model/notification_model.dart';
import 'package:ez_store/app/features/notification/data/repo/notification_repo.dart';

part 'notification_detail_state.dart';

class NotificationDetailCubit extends Cubit<NotificationDetailState> {
  NotificationDetailCubit({
    required NotificationDetailModel item,
  }) : super(NotificationDetailState(item: item));

  FutureOr<void> fetchItem() async {
    emit(state.copyWith(status: ItemDetailStatus.loading));
    try {
      // final data = await getIt<NotificationRepo>().getNotificationDetail(
      //   messageID: state.item.messageID,
      // );
      // emit(state.copyWith(
      //   item: data,
      //   status: ItemDetailStatus.success,
      // ));
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

  FutureOr<void> markAsRead() async {
    try {
      await getIt<NotificationRepo>().notificationMarkAsRead(
        messageID: state.item.messageID,
      );
      emit(state.copyWith(
        item: state.item.copyWith(hasRead: true),
      ));
    } catch (e) {
      logger.e(e);
    }
  }
}
