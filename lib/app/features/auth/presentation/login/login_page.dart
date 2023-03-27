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
      child: Builder(
        builder: (context) {
          return BlocListener<LoginCubit, LoginState>(
            listener: _onStateChanged,
            child: Scaffold(
              resizeToAvoidBottomInset: true,
              appBar: AppAppBar(
                title: '',
                args: AppBarArgs(
                  elevation: 0,
                ),
              ),
              body: const _PageBodyLoading(
                child: LoginBody(),
              ),
            ),
          );
        },
      ),
    );
  }

  void _onStateChanged(BuildContext context, LoginState state) {
    if (state.status == ItemDefaultStatus.error) {
      DialogUtils.showErrorDialog(
        context: context,
        content: state.error.getServerErrorMsg(),
        error: state.error,
      );
    }
  }
}

class _PageBodyLoading extends StatelessWidget {
  const _PageBodyLoading({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        // if (state.status == ItemDetailStatus.error) {
        //   return SimpleErrorText(error: state.errorMsg ?? '');
        // }
        final isLoading = state.status == ItemDefaultStatus.loading || state.status == ItemDefaultStatus.initial;

        return child;
      },
    );
  }
}
