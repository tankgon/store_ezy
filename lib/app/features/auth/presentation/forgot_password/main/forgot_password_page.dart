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
      child: DefaultStatusConsumer<ForgotPasswordCubit, ForgotPasswordState>(
        child: Scaffold(
          appBar: AppAppBar(
            title: '',
            args: AppBarArgs(
              elevation: 0,
            ),
          ),
          body: ForgotPasswordBody(),
        ),
      ),
    );
  }

}
