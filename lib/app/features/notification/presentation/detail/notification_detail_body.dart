import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/notification/presentation/detail/cubit/notification_detail_cubit.dart';

class NotificationDetailBody extends StatelessWidget {
  const NotificationDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollViewSliver.withPadding(
      child: BlocBuilder<NotificationDetailCubit, NotificationDetailState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              state.item.title?.text.semiBold.make() ?? const SizedBox.shrink(),
              state.item.content?.text.make() ?? const SizedBox.shrink(),
            ].withDivider(Gaps.vGap8),
          );
        },
      ).pxDefault(),
    );
  }
}
