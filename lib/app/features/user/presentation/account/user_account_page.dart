import 'package:auto_route/auto_route.dart';
import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user/presentation/account/user_account_body.dart';
import 'package:mulstore/app/features/user/presentation/account/cubit/user_account_cubit.dart';

@RoutePage()
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
