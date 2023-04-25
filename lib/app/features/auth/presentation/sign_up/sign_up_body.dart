import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/auth/presentation/sign_up/cubit/sign_up_cubit.dart';
import 'package:mulstore/app/features/auth/presentation/social_login/socail_auth.dart';
import 'package:mulstore/app/features/auth/presentation/widget/auth_id_input.dart';
import 'package:mulstore/app/features/auth/presentation/widget/auth_page_body.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthPageBody(
      child: ReactiveForm(
        formGroup: context.read<SignUpCubit>().form,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LocaleKeys.authen_SignUp.tr().text.titleLarge(context).semiBold.center.make(),
            Gaps.vGap32,
            const AuthIdPasswordInput(
              showConfirmPassword: true,
            ),
            Gaps.vGap32,
            AppButton(
              style: AppButtonTheme.confirmAction(context),
              isSubmitButton: true,
              label: LocaleKeys.common_Next.tr(),
              onPressed: () {
                context.read<SignUpCubit>().signUpOTP();
              },
            ),
            Gaps.vGap32,
            Text.rich(
              TextSpan(
                text: LocaleKeys.authen_AlreadyHaveAccount.tr(),
                children: [
                  TextSpan(
                    text: ' ${LocaleKeys.authen_Login.tr()}',
                    style: TextStyle(
                      color: context.theme.primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {
                      context.router.replace(const LoginRoute());
                    },
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            Gaps.vGap24,
            LocaleKeys.authen_OrSignUpWith.tr().text.center.make(),
            Gaps.vGap24,
            SocialAuthSection(),
          ],
        ),
      ),
    );
  }
}
