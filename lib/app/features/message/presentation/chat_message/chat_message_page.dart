import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/message/presentation/chat_message/chat_message_body.dart';
import 'package:mulstore/app/features/message/presentation/widget/chat_message_bottom_bar.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({super.key, required this.name, required this.srcImage});

  final String? name;
  final String? srcImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppBottomBar(
        child: ChatMessageBottomBar(),
      ),
      appBar: AppAppBar(
        title: Row(
          children: [
            AppAvatar(
              height: Dimens.ic_XL3,
              src: srcImage,
            ),
            Gaps.hGap10,
            Text(name ?? '')
                .text
                .titleMedium(context)
                .fontWeight(FontWeight.w600)
                .maxLines(2)
                .ellipsis
                .make()
                .minHeight(20),
          ],
        ),
        args: AppBarArgs(
          centerTitle: false,
          elevation: .5,
          actions: [
            Assets.icons.app.phoneLogoSvg.svg().objectCenter(),
            AppButtonIcon(
              icon: PhosphorIcons.dots_three_vertical,
              onPressed: () {},
            ),
            Gaps.hGap4,
          ].withDivider(Gaps.hGap4, showLast: true),
        ),
      ),
      body: const ChatMessageBody(),
    );
  }
}
