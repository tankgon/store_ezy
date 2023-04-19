import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/user/presentation/account/cubit/user_account_cubit.dart';

class UserAccountBody extends StatelessWidget {
  const UserAccountBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScrollBody(
      child: Column(
        children: [
          AppButton(
            label: 'Login',
            onPressed: () {
              context.router.push(const LoginRoute());
            },
          )
        ],
      ),
    );
  }
}
