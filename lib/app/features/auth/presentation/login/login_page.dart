import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/presentation/login/login_body.dart';
import 'package:ez_store/app/features/auth/presentation/login/cubit/login_cubit.dart';
import 'package:ez_store/app/features/auth/presentation/sign_up/sign_up_body.dart';
import 'package:ez_store/app/features/auth/presentation/widget/auth_id_input.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(
        idInputControl: AuthIdPasswordInput.createControlGroup(),
      )..fetchItem(),
      child: const DefaultStatusConsumer<LoginCubit, LoginState>(
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppAppBar(
            title: '',
            args: AppBarArgs(
              elevation: 0,
            ),
          ),
          body: LoginBody(),
        ),
      ),
    );
  }

}
