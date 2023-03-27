import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/presentation/otp_confirm/cubit/auth_otp_confirm_cubit.dart';
import 'package:ez_store/app/features/auth/presentation/widget/auth_page_body.dart';
import 'package:ez_store/app/features/auth/presentation/widget/otp_input.dart';
import 'package:ez_store/app/features/auth/presentation/widget/resend_count_down_text.dart';

class AuthOtpConfirmBody extends StatelessWidget {
  const AuthOtpConfirmBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthPageBody(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          LocaleKeys.authen_OTPSentMessage.tr(args: ['0796538406']).text.center.titleMedium(context).make(),
          Gaps.vGap24,
          DefaultPinInput(
            length: 6,
            onCompleted: (value) {
              context.read<AuthOtpConfirmCubit>().setOtpValid(otp: value);
            },
            onEditing: () {
              context.read<AuthOtpConfirmCubit>().setOtpValid(otp: '');
            },
          ),
          Gaps.vGap24,
          ResendCountdownText(
            onResend: () {},
          ).objectCenter(),
          Gaps.vGap32,
          BlocBuilder<AuthOtpConfirmCubit, AuthOtpConfirmState>(
            builder: (context, state) {
              return AppButton(
                isEnable: (state.otp?.length ?? 0) == 6,
                style: AppButtonTheme.confirmAction(context),
                label: LocaleKeys.common_Confirm.tr(),
                onPressed: () {
                  DialogUtils.showSuccessDialog(
                    context: context,
                    content: LocaleKeys.authen_SignUpSuccess.tr(),
                    barrierDismissible: false,
                    onAutoDismiss: () {

                    },
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
