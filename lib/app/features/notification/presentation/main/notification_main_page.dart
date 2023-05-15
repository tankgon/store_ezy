import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/notification/presentation/main/cubit/notification_main_cubit.dart';
import 'package:mulstore/app/features/notification/presentation/main/notification_main_body.dart';

@RoutePage()
class NotificationMainPage extends StatelessWidget {
  const NotificationMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotificationMainCubit(),
      child: Builder(builder: (context) {
        return BlocListener<NotificationMainCubit, NotificationMainState>(
          listener: _onStateChanged,
          child: Scaffold(
            appBar: AppAppBar(
                title: 'notification'.tr(),
                args: const AppBarArgs(
                  centerTitle: true,
                  elevation: 0,
                  titleSpacing: 0,
                )),
            body: const NotificationMainBody(),
          ),
        );
      }),
    );
  }

  void _onStateChanged(BuildContext context, NotificationMainState state) {
    if (state.status == ItemDefaultStatus.error) {
      DialogUtils.showErrorDialog(
        context: context,
        content: context.getAppErrorMsg(state.error),
        error: state.error,
      );
    }
  }
}
