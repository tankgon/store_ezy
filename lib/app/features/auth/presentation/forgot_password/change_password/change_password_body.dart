import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/presentation/forgot_password/change_password/cubit/change_password_cubit.dart';
import 'package:ez_store/app/features/auth/presentation/widget/auth_id_input.dart';
import 'package:ez_store/app/features/auth/presentation/widget/auth_page_body.dart';

class ChangePasswordBody extends StatelessWidget {
  const ChangePasswordBody({super.key}) ;

  @override
  Widget build(BuildContext context) {
    return AuthPageBody(
      child: ReactiveForm(
        formGroup: context.read<ChangePasswordCubit>().form,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LocaleKeys.authen_ChangePasword.tr().text.titleLarge(context).semiBold.center.make(),
            Gaps.vGap32,
            AuthPasswordInput(
              formControlName: ChangePasswordCubit.passwordKey,
              hintText: LocaleKeys.authen_InputNewPassword.tr(),
            ),
            Gaps.vGap16,
            AuthPasswordInput(
              formControlName: ChangePasswordCubit.confirmKey,
              hintText: LocaleKeys.authen_ConfirmPassword.tr(),
              showPasswordHelper: false,
            ),
            Gaps.vGap24,
            AppButton(
              style: AppButtonTheme.confirmAction(context),
              isSubmitButton: true,
              label: LocaleKeys.common_Confirm.tr(),
              onPressed: () {
                context.read<ChangePasswordCubit>().submit();
              },
            ),
            Gaps.vGap32,
          ],
        ),
      ),
    );
  }
}
