import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/presentation/bloc/auth_bloc.dart';

class NotificationBtn extends StatelessWidget {
  const NotificationBtn({super.key, this.padding, this.badgeBorderColor});

  final EdgeInsets? padding;
  final Color? badgeBorderColor;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listenWhen: (previous, current) => previous.data.userModel?.userId != current.data.userModel?.userId,
      listener: (context, state) {
        if (state is AuthenticatedState) {}
      },
      builder: (context, state) {
        // if (state is! AuthenticatedState) {
        //   return const SizedBox.shrink();
        // }
        return BadgedCount(
          icon: Icon(
            PhosphorIcons.bell,
            color: context.theme.iconTheme.color,
          ),
          badgeBorderColor: badgeBorderColor,
          padding: padding,
          count: 9,
          onPressed: () {
            // context.pushRoute(const NotificationMainRoute());
            context.pushRoute(const ChangePasswordRoute());
          },
        );
      },
    );
  }
}
