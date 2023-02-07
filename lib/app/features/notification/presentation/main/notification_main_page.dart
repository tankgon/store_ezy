import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/notification/presentation/main/cubit/notification_main_cubit.dart';
import 'package:ez_store/app/features/notification/presentation/main/notification_main_body.dart';

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
            appBar: BaseAppBar(
              title: 'notification'.tr,
              centerTitle: true,
            ),
            body: const NotificationMainBody(),
          ),
        );
      }),
    );
  }

  void _onStateChanged(BuildContext context, NotificationMainState state) {
    if (state.status == ItemDetailStatus.error) {
      DialogUtils.showAlertDialog(context, content: state.errorMsg);
    }
  }
}
