import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/notification/data/model/notification_model.dart';
import 'package:ez_store/app/features/notification/presentation/detail/cubit/notification_detail_cubit.dart';
import 'package:ez_store/app/features/notification/presentation/detail/notification_detail_body.dart';

class NotificationDetailPage extends StatelessWidget {
  const NotificationDetailPage({super.key, required this.item});

  final NotificationDetailModel item;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotificationDetailCubit(
        item: item,
      )
        ..fetchItem()
        ..markAsRead(),
      child: Builder(builder: (context) {
        return BlocListener<NotificationDetailCubit, NotificationDetailState>(
          listener: _onStateChanged,
          child: Scaffold(
            appBar: AppAppBar(
              title: 'notification'.tr(),
            ),
            body: const _PageBodyLoading(
              body: NotificationDetailBody(),
            ),
          ),
        );
      }),
    );
  }

  void _onStateChanged(BuildContext context, NotificationDetailState state) {
    if (state.status == ItemDetailStatus.error) {
      DialogUtils.showMaterialDialog(context: context, content: state.errorMsg);
    }
  }
}

class _PageBodyLoading extends StatelessWidget {
  const _PageBodyLoading({Key? key, required this.body}) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationDetailCubit, NotificationDetailState>(
      builder: (context, state) {
        if (state.status == ItemDetailStatus.error) {
          return AppErrorSimple(errorMsg: state.errorMsg ?? '');
        } else if (state.status == ItemDetailStatus.initial || state.status == ItemDetailStatus.loading) {
          return const AppLoading();
        }

        return body;
      },
    );
  }
}
