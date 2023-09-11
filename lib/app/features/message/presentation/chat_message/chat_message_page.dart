import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/message/presentation/widget/chat_message_bottom_bar.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppBottomBar(
        child: ChatMessageBottomBar(),
      ),
      appBar: AppAppBar(
        title: Row(
          children: [
            const AppAvatar(
              height: Dimens.ic_XL3,
              src: 'assets/icons/app/app_logo_name.png',
            ),
            Gaps.hGap4,
            Text(name)
                .text
                .titleMedium(context)
                .fontWeight(FontWeight.w600)
                .maxLines(1)
                .ellipsis
                .make()
                .minHeight(24),
          ],
        ),
        args: AppBarArgs(
          centerTitle: false,
          elevation: 0,
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
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
