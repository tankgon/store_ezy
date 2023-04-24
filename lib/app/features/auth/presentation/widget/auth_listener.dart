import 'package:ez_store/all_file/all_file.dart';

import 'package:ez_store/app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:ez_store/services/user_secure_storage_service.dart';

class AuthListener extends StatelessWidget {
  const AuthListener({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: _onAuthStateChange,
      builder: (context, state) {
        return child;
      },
    );
  }

  void _onAuthStateChange(BuildContext context, AuthState state) {
    if (state is AuthenticatedState) {
      if (!state.isRefresh) {
        ToastUtils.showToast(
          context: context,
          msg: 'Chào mừng'.tr(),
          duration: const Duration(
            seconds: 3,
          ),
        );
      }
    } else if (state is UnAuthenticatedState) {
      if (state.openSignInPage) {
        // widget.appRouter.push(SignInRoute());
        return;
      }

      if (state.showToast) {
        ToastUtils.showToast(
          context: context,
          msg: 'Đăng xuất thành công'.tr(),
          duration: const Duration(seconds: 3),
        );
      }
    }
  }
}
