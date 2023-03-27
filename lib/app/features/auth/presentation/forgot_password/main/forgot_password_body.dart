import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/data/model/auth_base_model.dart';
import 'package:ez_store/app/features/auth/presentation/forgot_password/main/cubit/forgot_password_cubit.dart';
import 'package:ez_store/app/features/auth/presentation/login/login_body.dart';
import 'package:ez_store/app/features/auth/presentation/widget/auth_id_input.dart';
import 'package:ez_store/app/features/auth/presentation/widget/auth_page_body.dart';

class ForgotPasswordBody extends StatelessWidget {
  const ForgotPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthPageBody(
      child: ReactiveForm(
        formGroup: context.read<ForgotPasswordCubit>().form,
        child: BlocBuilder<ForgotPasswordCubit, ForgotPasswordState>(
          builder: (context, state) {
            final item = state.item;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                LocaleKeys.authen_ForgotPassword.tr().text.titleLarge(context).semiBold.center.make(),
                Gaps.vGap24,
                LocaleKeys.authen_ForgotPasswordOTPMsg
                    .tr(
                      args: [RegisterType.values.mapAsList((item) => item.enumTranslate()).join('/')],
                    )
                    .text
                    .titleMedium(context)
                    .center
                    .make().px22(),
                Gaps.vGap32,
                const AuthIdInput(),
                Gaps.vGap42,
                AppButton(
                  style: AppButtonTheme.confirmAction(context),
                  isSubmitButton: true,
                  label: LocaleKeys.common_Confirm.tr(),
                  onPressed: () {
                    context.pushRoute(ChangePasswordRoute());
                  },
                ),
                Gaps.vGap32,
                const LoginNotHaveAccountMsg(),
              ],
            );
          },
        ),
      ),
    );
  }
}
