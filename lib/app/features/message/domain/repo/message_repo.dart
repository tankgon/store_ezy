import 'package:mulstore/app/features/message/domain/entity/message_base_entity.dart';

abstract class MessageRepo {
  Future<List<MessageBaseEntity>> getMessageList({
    int? limit,
    int? offset,
  });
}
