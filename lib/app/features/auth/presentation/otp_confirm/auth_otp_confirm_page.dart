import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/auth/presentation/otp_confirm/auth_otp_confirm_body.dart';
import 'package:mulstore/app/features/auth/presentation/otp_confirm/cubit/auth_otp_confirm_cubit.dart';

class AuthOtpConfirmPage extends StatelessWidget {
  const AuthOtpConfirmPage({
    required this.confirmOTPFunc,
    required this.onResendOTP,
    this.otpLength = 4,
    this.otpMessage,
    super.key,
    this.successMessage,
  });

  final Future<bool> Function(String otpUserInput) confirmOTPFunc;
  final Future<Object?> Function() onResendOTP;
  final int otpLength;
  final String? otpMessage;
  final String? successMessage;

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
            if (successMessage?.isNotEmpty == true) {
              DialogUtils.showSuccessDialog(
                context: context,
                content: successMessage,
                barrierDismissible: false,
                onAutoDismiss: () {
                  context.router.pop(true);
                },
              );
            } else {
              context.router.pop(true);
            }
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
