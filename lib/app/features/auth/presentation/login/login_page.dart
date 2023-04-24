import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/presentation/login/login_body.dart';
import 'package:ez_store/app/features/auth/presentation/login/cubit/login_cubit.dart';
import 'package:ez_store/app/features/auth/presentation/sign_up/sign_up_body.dart';
import 'package:ez_store/app/features/auth/presentation/widget/auth_id_input.dart';
import 'package:ez_store/app/features/auth/self.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(
        idInputControl: AuthIdPasswordInput.createControlGroup(),
        authBloc: context.read<AuthBloc>(),
      ),
      child: DefaultStatusConsumer<LoginCubit, LoginState>(
        onSuccess: (state) {
          context.router.popToParentOf([LoginRoute.name]);
        },
        child: const Scaffold(
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
