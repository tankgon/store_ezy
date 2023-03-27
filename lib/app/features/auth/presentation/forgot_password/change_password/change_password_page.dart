import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/presentation/forgot_password/change_password/change_password_body.dart';
import 'package:ez_store/app/features/auth/presentation/forgot_password/change_password/cubit/change_password_cubit.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangePasswordCubit()..fetchItem(),
      child: Builder(builder: (context) {
        return BlocListener<ChangePasswordCubit, ChangePasswordState>(
          listener: _onStateChanged,
          child: Scaffold(
            appBar: AppAppBar(
              title: '',
              args: AppBarArgs(
                elevation: 0,
              ),
            ),
            body: const _PageBodyLoading(
              child: ChangePasswordBody(),
            ),
          ),
        );
      }),
    );
  }

  void _onStateChanged(BuildContext context, ChangePasswordState state) {
    if (state.status == ItemDefaultStatus.error) {
      DialogUtils.showErrorDialog(
        context: context,
        content: state.error.getServerErrorMsg(),
        error: state.error,
      );
    }
  }
}

class _PageBodyLoading extends StatelessWidget {
  const _PageBodyLoading({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangePasswordCubit, ChangePasswordState>(
      builder: (context, state) {
        final isLoading = state.status == ItemDefaultStatus.loading || state.status == ItemDefaultStatus.initial;

        return child;
      },
    );
  }
}
