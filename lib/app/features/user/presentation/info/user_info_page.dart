import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/auth/self.dart';
import 'package:mulstore/app/features/user/presentation/info/cubit/user_info_cubit.dart';
import 'package:mulstore/app/features/user/presentation/info/user_info_body.dart';
import 'package:mulstore/app/features/user/self.dart';

@RoutePage()
class UserInfoPage extends StatelessWidget {
  const UserInfoPage({super.key, required this.user});

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is UnAuthenticatedState) {
          context.popRoute();
        }
      },
      child: BlocProvider(
        create: (context) => UserInfoCubit(
          item: user,
        ),
        child: DefaultStatusConsumer<UserInfoCubit, UserInfoState>(
          child: Scaffold(
            appBar: AppAppBar(
              title: 'Tài khoản'.tr(),
            ),
            body: const UserInfoBody(),
          ),
        ),
      ),
    );
  }
}
