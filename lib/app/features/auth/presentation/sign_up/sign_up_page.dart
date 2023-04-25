import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/auth/presentation/sign_up/cubit/sign_up_cubit.dart';
import 'package:mulstore/app/features/auth/presentation/sign_up/sign_up_body.dart';
import 'package:mulstore/app/features/auth/self.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(
        authBloc: context.read<AuthBloc>(),
      ),
      child: Builder(
        builder: (context) {
          return DefaultStatusConsumer<SignUpCubit, SignUpState>(
            onSuccess: (state) async {
              getIt<AppAutoRoute>().popToParentOf([SignUpRoute.name]);
            },
            onError: (error) {
              if (error is AuthAccountExistException) {
                DialogUtils.showErrorDialog(
                  context: context,
                  content: error.error.getServerErrorMsg(),
                  error: error,
                  onConfirm: () {
                    context.read<SignUpCubit>().reActiveAccount(
                          userID: error.userID,
                          userName: error.userName,
                        );
                  },
                );
                return true;
              }
              return false;
            },
            child: Scaffold(
              appBar: AppAppBar(
                title: '',
                args: AppBarArgs(
                  elevation: 0,
                ),
              ),
              body: SignUpBody(),
            ),
          );
        },
      ),
    );
  }
}
