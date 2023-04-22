import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/presentation/otp_confirm/auth_otp_confirm_body.dart';
import 'package:ez_store/app/features/auth/presentation/otp_confirm/cubit/auth_otp_confirm_cubit.dart';

class AuthOtpConfirmPage extends StatelessWidget {
  const AuthOtpConfirmPage({
    required this.confirmOTPFunc,
    required this.onResendOTP,
    this.otpLength = 4,
    this.otpMessage,
    super.key,
  });

  final Future<bool> Function(String otpUserInput) confirmOTPFunc;
  final Future<void> Function() onResendOTP;
  final int otpLength;
  final String? otpMessage;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthOtpConfirmCubit(
        confirmOTPFunc: confirmOTPFunc,
        onResendOTP: onResendOTP,
        otpLength: otpLength,
        otpMessage: otpMessage,
      ),
      child: Builder(builder: (context) {
        return DefaultStatusConsumer<AuthOtpConfirmCubit, AuthOtpConfirmState>(
          onSuccess: (state) {
            DialogUtils.showSuccessDialog(
              context: context,
              content: LocaleKeys.authen_SignUpSuccess.tr(),
              barrierDismissible: false,
              onAutoDismiss: () {
                context.router.pop(true);
              },
            );
          },
          child: Scaffold(
            appBar: AppAppBar(
              title: '',
              args: AppBarArgs(
                elevation: 0,
              ),
            ),
            body: AuthOtpConfirmBody(),
          ),
        );
      }),
    );
  }
}
