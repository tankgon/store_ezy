import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/user/presentation/account/user_account_body.dart';
import 'package:ez_store/app/features/user/presentation/account/cubit/user_account_cubit.dart';

class UserAccountPage extends StatelessWidget {
  const UserAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserAccountCubit(),
      child: DefaultStatusConsumer<UserAccountCubit, UserAccountState>(
        child: Scaffold(
          appBar: AppAppBar(
              title: LocaleKeys.user_Account.tr(),
            ),
          body: UserAccountBody(),
        ),
      ),
    );
  }   

}
