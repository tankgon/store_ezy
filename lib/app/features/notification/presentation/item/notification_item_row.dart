import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/view/bloc/auth_bloc.dart';
import 'package:ez_store/app/features/notification/core/service/notification_utils.dart';
import 'package:ez_store/app/features/notification/data/model/notification_model.dart';
import 'package:ez_store/app/features/notification/presentation/detail/cubit/notification_detail_cubit.dart';

class NotificationItemRow extends StatelessWidget {
  const NotificationItemRow({super.key, required this.item});

  final NotificationDetailModel item;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotificationDetailCubit(
        item: item,
      ),
      child: Builder(builder: (context) {
        return BlocConsumer<NotificationDetailCubit, NotificationDetailState>(
          listener: _onStateChanged,
          builder: (context, state) {
            final item = state.item;
            return CardCupertinoEffect(
              onPressed: () {
                _onClick(context);
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        shape: BoxShape.circle,
                      ),
                      child: Assets.icons.icBireal.image().p8(),
                    ),
                  ).expand(),
                  Gaps.hGap8,
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          item.title?.text.semiBold.make().expand() ?? Gaps.spacer,
                          item.createdDate?.toTimeAgo()?.text.maxLines(3).ellipsis.textS.colorHint(context).make().pLeft8() ?? Gaps.empty,
                        ],
                      ),
                      Gaps.vGap4,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          item.content?.text.maxLines(2).ellipsis.make().expand() ?? Gaps.spacer,
                          if (item.hasRead != true)
                            ContainerCircle(
                              color: context.theme.primaryColor,
                              size: 12,
                            ).p2()
                        ],
                      ),
                      Gaps.divider.py12(),
                    ],
                  ).flex(flex: 5)
                ],
              ).minHeight(Dimens.minRowHeight),
            );
          },
        );
      }),
    );
  }

  Future<void> _onClick(BuildContext context) async {
    context.read<NotificationDetailCubit>().markAsRead();
    if (item != null) {
      final navigateToPage = await NotificationUtils.navigateToPage(
        router: context.router,
        data: item,
        currentUser: context.read<AuthBloc>().user,
      );
      if (navigateToPage == true) {
        return;
      }
    }
    await context.pushRoute(
      NotificationDetailRoute(
        item: item,
      ),
    );
  }

  void _onStateChanged(BuildContext context, NotificationDetailState state) {
    if (state.status == ItemDetailStatus.error) {
      DialogUtils.showMaterialDialog(context: context, content: state.errorMsg);
    }
  }
}
