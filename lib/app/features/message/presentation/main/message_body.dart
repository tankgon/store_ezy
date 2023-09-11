import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/message/presentation/chat_message/chat_message_page.dart';
import 'package:mulstore/app/features/message/presentation/widget/app_tile_text.dart';

class MessageBody extends StatelessWidget {
  const MessageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScrollBody(
      child: Column(
        children: [
          AppTileTextChat.semiBold(
            leading: const AppAvatar(
              height: Dimens.ic_XL6,
              src: 'assets/icons/app/app_logo_name.png',
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ChatMessage(
                    name: 'Minh Châu',
                  ),
                ),
              );
            },
            time: '12:00',
            title: 'Minh Châu',
            quantity: '2',
            subtitle:
                'Vui lòng xem báo cáo sản phẩm qua chứng từ được cung cấp',
          ),
          const AppTileTextChat.semiBold(
            leading: AppAvatar(
              height: Dimens.ic_XL6,
              src: 'assets/icons/app/app_logo_name.png',
            ),
            time: '12:00',
            title: 'An Khang',
            quantity: '2',
            subtitle:
                'Vui lòng xem báo cáo sản phẩm qua chứng từ được cung cấp',
          ),
          const AppTileTextChat.semiBold(
            leading: AppAvatar(
              height: Dimens.ic_XL6,
              src: 'assets/icons/app/app_logo_name.png',
            ),
            time: '12:01',
            title: 'Trung Sơn',
            subtitle: 'Bạn: Tôi đã chuyển khoản',
          ),
        ],
      ),
    );
  }
}
