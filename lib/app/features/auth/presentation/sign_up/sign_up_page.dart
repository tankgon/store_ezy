import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/presentation/sign_up/sign_up_body.dart';
import 'package:ez_store/app/features/auth/presentation/sign_up/cubit/sign_up_cubit.dart';
import 'package:ez_store/app/features/auth/presentation/widget/auth_id_input.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(
        idInputControl: AuthIdPasswordInput.createControlGroup(),
      )..fetchItem(),
      child: Builder(
        builder: (context) {
          return DefaultStatusConsumer<SignUpCubit, SignUpState>(
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
