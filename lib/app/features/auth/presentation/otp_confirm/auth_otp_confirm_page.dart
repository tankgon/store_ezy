import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/presentation/otp_confirm/auth_otp_confirm_body.dart';
import 'package:ez_store/app/features/auth/presentation/otp_confirm/cubit/auth_otp_confirm_cubit.dart';

class AuthOtpConfirmPage extends StatelessWidget {
  const AuthOtpConfirmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthOtpConfirmCubit(),
      child: Builder(builder: (context) {
        return BlocListener<AuthOtpConfirmCubit, AuthOtpConfirmState>(
          listener: _onStateChanged,
          child: Scaffold(
            appBar: AppAppBar(
              title: '',
              args: AppBarArgs(
                elevation: 0,
              ),
            ),
            body: const _PageBodyLoading(
              child: AuthOtpConfirmBody(),
            ),
          ),
        );
      }),
    );
  }

  void _onStateChanged(BuildContext context, AuthOtpConfirmState state) {
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
    return BlocBuilder<AuthOtpConfirmCubit, AuthOtpConfirmState>(
      builder: (context, state) {
        // if (state.status == ItemDetailStatus.error) {
        //   return SimpleErrorText(error: state.errorMsg ?? '');
        // }
        final isLoading = state.status == ItemDefaultStatus.loading || state.status == ItemDefaultStatus.initial;

        return child;
      },
    );
  }
}
