import 'package:mulstore/all_file/all_file.dart';
part 'message_base_entity.g.dart';

@CopyWith(copyWithNull: true)
class MessageBaseEntity {
  const MessageBaseEntity({
    this.id = '',
    this.name,
    this.newChat,
    this.srcImage,
    this.time,
    this.messageCount,
  });

  static MessageBaseEntity demo() {
    return const MessageBaseEntity(
      id: '1',
      name: 'Minh Châu',
      newChat:
          'Vui lòng xem báo cáo sản phẩm qua chứng từ được cung cấp',
      srcImage: 'assets/icons/app/logo_chat.jpg',
      time: '12:00',
      messageCount: '2',
    );
  }

  final String? id;
  final String? name;
  final String? newChat;
  final String? srcImage;
  final String? time;
  final String? messageCount;
}
