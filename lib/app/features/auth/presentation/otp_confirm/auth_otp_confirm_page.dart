import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/presentation/otp_confirm/auth_otp_confirm_body.dart';
import 'package:ez_store/app/features/auth/presentation/otp_confirm/cubit/auth_otp_confirm_cubit.dart';

class AuthOtpConfirmPage extends StatelessWidget {
  const AuthOtpConfirmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthOtpConfirmCubit(),
      child: Builder(builder: (context) {
        return DefaultStatusConsumer<AuthOtpConfirmCubit, AuthOtpConfirmState>(
          child: Scaffold(
            appBar: AppAppBar(
              title: '',
              args: AppBarArgs(
                elevation: 0,
              ),
            ),
            body: AuthOtpConfirmBody(),
          ),
        );
      }),
    );
  }

}

