import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/message/domain/entity/message_base_entity.dart';

import 'package:mulstore/app/features/message/self.dart';

part 'message_state.dart';

class MessageCubit extends Cubit<MessageState> {
  MessageCubit({
    MessageBaseEntity? item,
  }) : super(MessageState(message: item ?? const MessageBaseEntity()));

  final MessageRepo messageRepo = getIt();

  FutureOr<void> fetchItem() async {
    emit(state.copyWith(status: ItemStatus.loading));
    try {
      // final item = await Get.find<ApproveRepo>().getProgramForApprove(programID: item.programID ?? '');
      emit(
        state.copyWith(
          status: ItemStatus.success,
          // item: item,
        ),
      );
    } catch (e) {
      log(e.toString(), error: e);
      emit(
        state.copyWith(
          status: ItemStatus.error,
          error: e,
        ),
      );
    }
  }

  Future<List<MessageBaseEntity>> fetchListMessage(int offset, int limit) {
    return messageRepo.getMessageList(
      limit: limit,
      offset: offset,
    );
  }
}
