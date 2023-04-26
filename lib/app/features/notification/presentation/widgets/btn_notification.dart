import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/auth/presentation/bloc/auth_bloc.dart';

class NotificationBtn extends StatelessWidget {
  const NotificationBtn({super.key, this.padding, this.badgeBorderColor});

  final EdgeInsets? padding;
  final Color? badgeBorderColor;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listenWhen: (previous, current) => previous.data.user?.userID != current.data.user?.userID,
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
            context.pushRoute(const NotificationMainRoute());
          },
        );
      },
    );
  }
}
