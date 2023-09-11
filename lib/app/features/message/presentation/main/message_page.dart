import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/message/presentation/main/cubit/message_cubit.dart';
import 'package:mulstore/app/features/message/presentation/main/message_body.dart';
import 'package:mulstore/app/features/message/presentation/search_message/search_message_page.dart';

@RoutePage()
class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MessageCubit()..fetchItem(),
      child: Builder(
        builder: (context) {
          return BlocListener<MessageCubit, MessageState>(
            listener: _onStateChanged,
            child: Scaffold(
              appBar: AppAppBar(
                title: 'Tin nhắn',
                args: AppBarArgs(
                  centerTitle: false,
                  elevation: 0,
                  actions: [
                    AppButtonIcon(
                      icon: PhosphorIcons.magnifying_glass,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const SearchMessage(),
                          ),
                        );
                      },
                    ),
                    AppButtonIcon(
                      icon: PhosphorIcons.note_pencil,
                      onPressed: () {},
                    ),
                    Gaps.hGap4,
                  ].withDivider(Gaps.hGap4, showLast: true),
                ),
              ),
              body: const MessageBody(),
            ),
          );
        },
      ),
    );
  }

  void _onStateChanged(BuildContext context, MessageState state) {
    if (state.status == ItemStatus.error) {
      DialogUtils.showMaterialDialog(
        context: context,
        content: context.getAppErrorMsg(state.error),
      );
    }
  }
}

class _PageBodyLoading extends StatelessWidget {
  const _PageBodyLoading({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageCubit, MessageState>(
      builder: (context, state) {
        // if (state.status == ItemDefaultStatus.error) {
        //   return SimpleErrorText(error: state.error ?? '');
        // }
        final isLoading = state.status == ItemStatus.loading ||
            state.status == ItemStatus.initial;

        return child;
      },
    );
  }
}
