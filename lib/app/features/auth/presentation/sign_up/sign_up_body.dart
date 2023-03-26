import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/presentation/sign_up/cubit/sign_up_cubit.dart';
import 'package:ez_store/app/features/auth/presentation/social_login/socail_auth.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScrollBody(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ReactiveForm(
          formGroup: context.read<SignUpCubit>().form,
          child: BlocBuilder<SignUpCubit, SignUpState>(
            builder: (context, state) {
              final item = state.item;
              return ContainerLimitedHoz(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Assets.icons.app.appLogoName.svg().objectCenter().flex(flex: 3),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        LocaleKeys.authen_SignUp.tr().text.titleLarge(context).semiBold.center.make(),
                        Gaps.vGap32,
                        AuthIdInput(),
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
                                recognizer: TapGestureRecognizer()..onTap = () {},
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
                    ).expand(flex: 11),
                  ],
                ).pxDefault(),
              ).objectCenter();
            },
          ),
        ),
      ),
    );
  }
}

class AuthIdInput extends StatelessWidget {
  const AuthIdInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ...[
          AppTextFieldReactive(
            formControlName: SignUpCubit.idKey,
            enableClearButton: true,
            decoration: AppTextFieldTheme.primaryStyle(context).copyWith(
              hintText: LocaleKeys.authen_InputEmailOrPhone.tr(),
            ),
            validationMessages: {
              ValidationMessage.required: (e) => LocaleKeys.authen_PhoneOrEmailRequired.tr(),
              ValidationMessage.email: (e) => LocaleKeys.authen_EmailOrPhoneNotValid.tr(),
              ValidationMessage.pattern: (e) => LocaleKeys.authen_EmailOrPhoneNotValid.tr(),
            },
          ),
          FocusBuilder(
            builder: (context, hasFocus) {
              return TextFieldPasswordEyeBuilder(
                inputDecoration: AppTextFieldTheme.primaryStyle(context),
                builder: (context, inputDecoration, isTextVisible) => AppTextFieldReactive(
                  formControlName: SignUpCubit.passwordKey,
                  obscureText: !isTextVisible,
                  decoration: inputDecoration.copyWith(
                    hintText: LocaleKeys.authen_Password.tr(),
                    helperText: hasFocus ? LocaleKeys.authen_PasswordPatternMsg.tr() : null,
                  ),
                  validationMessages: {
                    ValidationMessage.required: (e) => LocaleKeys.authen_PasswordRequired.tr(),
                    ValidationMessage.pattern: (e) => LocaleKeys.authen_PasswordPatternMsg.tr(),
                  },
                ),
              );
            },
          ),
        ].withDivider(Gaps.vGap16),
        Gaps.vGap32,
        AppButton(
          style: AppButtonTheme.confirmAction(context),
          isSubmitButton: true,
          label: LocaleKeys.common_Next.tr(),
          onPressed: () {},
        )
      ],
    );
  }
}
