import 'package:mulstore/app/features/message/domain/entity/message_base_entity.dart';
import 'package:mulstore/app/features/message/self.dart';

class MessageRepoImpl extends MessageRepo {
  @override
  Future<List<MessageBaseEntity>> getMessageList({
    int? limit,
    int? offset,
  }) async {
    return Future.value(
      List.generate(5, (index) => MessageBaseEntity.demo()).toList(),
    );
  }
}
