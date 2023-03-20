import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/user/presentation/receive_info/user_receive_info_body.dart';
import 'package:ez_store/app/features/user/presentation/receive_info/cubit/user_receive_info_cubit.dart';

class UserReceiveInfoPage extends StatelessWidget {

  const UserReceiveInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserReceiveInfoCubit()..fetchItem(),
      child: Builder(
          builder: (context) {
            return BlocListener<UserReceiveInfoCubit, UserReceiveInfoState>(
              listener: _onStateChanged,
              child: Scaffold(
                appBar: AppAppBar(
                    title: 'title',
                  ),
                body: const _PageBodyLoading(
                  child: UserReceiveInfoBody(),
                ),
              ),
            );
          }
      ),
    );
  }   

  void _onStateChanged(BuildContext context, UserReceiveInfoState state) {
    if (state.status == ItemDetailStatus.error) {
      DialogUtils.showMaterialDialog(context: context, content: state.errorMsg);
    }
  }
}

class _PageBodyLoading extends StatelessWidget {
  const _PageBodyLoading({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserReceiveInfoCubit, UserReceiveInfoState>(
      builder: (context, state) {
        // if (state.status == ItemDetailStatus.error) {
        //   return SimpleErrorText(errorMsg: state.errorMsg ?? '');
        // }
        final isLoading = state.status == ItemDetailStatus.loading || state.status == ItemDetailStatus.initial;

        return child;
      },
    );
  }
}
