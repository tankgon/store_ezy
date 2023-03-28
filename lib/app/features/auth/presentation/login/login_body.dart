import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/data/model/auth_base_model.dart';
import 'package:ez_store/app/features/auth/presentation/login/cubit/login_cubit.dart';
import 'package:ez_store/app/features/auth/presentation/sign_up/sign_up_body.dart';
import 'package:ez_store/app/features/auth/presentation/social_login/socail_auth.dart';
import 'package:ez_store/app/features/auth/presentation/widget/auth_id_input.dart';
import 'package:ez_store/app/features/auth/presentation/widget/auth_page_body.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthPageBody(
      child: ReactiveForm(
        formGroup: context.read<LoginCubit>().form,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LocaleKeys.authen_Login.tr().text.titleLarge(context).semiBold.center.make(),
            Gaps.vGap32,
            const AuthIdPasswordInput(
              showPasswordHelper: false,
            ),
            AppButtonText(
              padding: EdgeInsets.zero.copyWith(top: 8),
              label: '${LocaleKeys.authen_ForgotPassword.tr()}?',
              onPressed: () {
                context.pushRoute(const ForgotPasswordRoute());
              },
            ).objectCenterRight(),
            Gaps.vGap24,
            AppButton(
              style: AppButtonTheme.confirmAction(context),
              isSubmitButton: true,
              label: LocaleKeys.authen_Login.tr(),
              onPressed: () {},
            ),
            Gaps.vGap32,
            const LoginNotHaveAccountMsg(),
            Gaps.vGap24,
            LocaleKeys.authen_OrLoginWith.tr().text.center.make(),
            Gaps.vGap24,
            SocialAuthSection(),
          ],
        ),
      ),
    );
  }
}

class LoginNotHaveAccountMsg extends StatelessWidget {
  const LoginNotHaveAccountMsg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: LocaleKeys.authen_NotHaveAccount.tr(),
        children: [
          TextSpan(
            text: ' ${LocaleKeys.authen_SignUp.tr()}',
            style: TextStyle(
              color: context.theme.primaryColor,
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushRoute(const SignUpRoute());
              },
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
