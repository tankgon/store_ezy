import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/message/domain/entity/message_base_entity.dart';
import 'package:mulstore/app/features/message/presentation/chat_message/chat_message_page.dart';
import 'package:mulstore/app/features/message/presentation/main/cubit/message_cubit.dart';
import 'package:mulstore/app/features/message/presentation/widget/app_tile_text.dart';

class MessageBody extends StatefulWidget {
  const MessageBody({super.key, this.padding, this.fetchListData});
  final EdgeInsets? padding;
  @override
  State<MessageBody> createState() => _MessageBodyState();
  final PagingListFetchFunc<MessageBaseEntity>? fetchListData;
}

class _MessageBodyState extends State<MessageBody> {
  @override
  Widget build(BuildContext context) {
    return AppScrollBody(
      child: PagingList<MessageBaseEntity>(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, item, index) => AppTileTextChat.semiBold(
          leading: AppAvatar(
            height: Dimens.ic_XL6,
            src: item.srcImage,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ChatMessage(
                  name: item.name,
                  srcImage: item.srcImage,
                ),
              ),
            );
          },
          time: item.time,
          title: item.name,
          quantity: item.messageCount,
          subtitle: item.newChat,
        ),
        fetchListData: context.read<MessageCubit>().fetchListMessage,
      ),
    );
  }
}
