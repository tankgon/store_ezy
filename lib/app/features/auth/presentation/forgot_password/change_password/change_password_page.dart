import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/auth/presentation/forgot_password/change_password/change_password_body.dart';
import 'package:mulstore/app/features/auth/presentation/forgot_password/change_password/cubit/change_password_cubit.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangePasswordCubit(),
      child: Builder(
        builder: (context) {
          return DefaultStatusConsumer<ChangePasswordCubit, ChangePasswordState>(
            child: Scaffold(
              appBar: AppAppBar(
                title: LocaleKeys.authen_ChangePasword.tr(),
                args: AppBarArgs(
                  centerTitle: true,
                ),
              ),
              body: ChangePasswordBody(),
            ),
          );
        },
      ),
    );
  }

}
