import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/presentation/forgot_password/main/forgot_password_body.dart';
import 'package:ez_store/app/features/auth/presentation/forgot_password/main/cubit/forgot_password_cubit.dart';
import 'package:ez_store/app/features/auth/presentation/widget/auth_id_input.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgotPasswordCubit(
        controls: AuthIdInput.createControl(),
      ),
      child: Builder(
        builder: (context) {
          return ReactiveForm(
            formGroup: context.read<ForgotPasswordCubit>().form,
            child: DefaultStatusConsumer<ForgotPasswordCubit, ForgotPasswordState>(
              child: Scaffold(
                appBar: AppAppBar(
                  title: LocaleKeys.authen_ForgotPassword.tr(),
                  args: const AppBarArgs(
                    centerTitle: true,
                  ),
                ),
                body: AppBottomAlign(
                  bottomBar: AppBottomBar(
                    elevation: 0,
                    expandWidth: true,
                    child: AppButton(
                      style: AppButtonTheme.confirmAction(context),
                      isSubmitButton: true,
                      label: LocaleKeys.common_Confirm.tr(),
                      onPressed: () {
                        context.pushRoute(ChangePasswordRoute());
                      },
                    ),
                  ),
                  child: const ForgotPasswordBody(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
