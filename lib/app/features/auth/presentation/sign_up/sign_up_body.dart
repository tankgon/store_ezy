import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/presentation/sign_up/cubit/sign_up_cubit.dart';

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
                    Assets.icons.app.appLogoName.svg().objectCenter().expand(flex: 2),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        LocaleKeys.authen_SignUp.tr().text.titleLarge(context).semiBold.center.make(),
                        Gaps.vGap32,
                        ...[
                          AppTextFieldReactive(
                            formControlName: SignUpCubit.idKey,
                            decoration: AppTextFieldTheme.primaryStyle(context).copyWith(
                              hintText: LocaleKeys.authen_InputEmailOrPhone.tr(),
                            ),
                          ),
                          AppTextFieldReactive(
                            formControlName: SignUpCubit.passwordKey,
                            decoration: AppTextFieldTheme.primaryStyle(context).copyWith(
                              hintText: LocaleKeys.authen_Password.tr(),
                            ),
                          ),
                        ].withDivider(Gaps.vGap16),
                        Gaps.vGap32,
                        AppButton(
                          style: AppButtonTheme.confirmAction(context),
                          label: LocaleKeys.common_Next.tr(),
                          onPressed: () {},
                        ),
                        Gaps.vGap32,
                        LocaleKeys.authen_OrSignUpWith.tr().text.bodySmall(context).center.make(),
                        Gaps.vGap24,
                        SocialAuthSection(),
                      ],
                    ).expand(flex: 9),
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

class SocialAuthSection extends StatelessWidget {
  const SocialAuthSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppButton(
          style: AppButtonTheme.circleGreyIcon(context),
          onPressed: () {},
          child: Assets.icons.common.google.svg(),
        ),
        AppButton(
          style: AppButtonTheme.circleGreyIcon(context),
          onPressed: () {},
          child: Assets.icons.common.apple.svg(),
        ),
        AppButton(
          style: AppButtonTheme.circleGreyIcon(context),
          onPressed: () {},
          child: const Icon(
            FontAwesomeIcons.facebookF,
            color: Color(0xFF226DFF),
          ),
        ),
      ],
    );
  }
}
