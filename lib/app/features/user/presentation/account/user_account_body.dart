import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/self.dart';
import 'package:ez_store/app/features/user/presentation/account/cubit/user_account_cubit.dart';

class UserAccountBody extends StatelessWidget {
  const UserAccountBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScrollBody.withSpacing(
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is AuthenticatedState) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                state.data.user?.userName?.text.titleLarge(context).center.make(),
                AppButton(
                  label: 'Đăng xuất'.tr(),
                  onPressed: () {
                    context.read<AuthBloc>().add(UnAuthenticatedEvent(showToast: true));
                  },
                ),
              ].withDivider(Gaps.vGap16),
            );
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppButton(
                label: 'Đăng ký'.tr(),
                onPressed: () {
                  context.router.push(const SignUpRoute());
                },
              ),
              AppButton(
                label: 'Đăng nhập'.tr(),
                onPressed: () {
                  context.router.push(const LoginRoute());
                },
              ),
            ].withDivider(Gaps.vGap16),
          );
        },
      ).pxDefault(),
    );
  }
}
