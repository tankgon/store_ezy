import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/about/self.dart';
import 'package:mulstore/app/features/auth/self.dart';
import 'package:mulstore/app/features/user/presentation/account/cubit/user_account_cubit.dart';
import 'package:mulstore/app/features/user/self.dart';

class UserAccountBody extends StatelessWidget {
  const UserAccountBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScrollBody.withSpacing(
      child: Column(
        children: [
          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              if (state is AuthenticatedState) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    UserSimpleInfo(
                      user: state.data.user,
                      subTitle: 'Xem trang cá nhân'.tr(),
                      onPressed: () {
                        context.router.push(
                          UserInfoRoute(
                            user: state.data.user!,
                          ),
                        );
                      },
                    ),
                  ].withDivider(Gaps.vGap16),
                );
              }

              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  UserSimpleInfo(
                    user: state.data.user,
                    onPressed: () {
                      context.router.push(const LoginRoute());
                    },
                  ),
                ].withDivider(Gaps.vGap16),
              );
            },
          ).pxDefault(),
          Gaps.vGap16,
          const AppDivider(),
          const AppInfoSection(),
        ],
      ),
    );
  }
}
