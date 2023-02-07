import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/view/bloc/auth_bloc.dart';

class NotificationBtn extends StatelessWidget {
  const NotificationBtn({super.key, this.padding, this.badgeBorderColor});

  final EdgeInsets? padding;
  final Color? badgeBorderColor;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listenWhen: (previous, current) => previous.data.userModel?.userId != current.data.userModel?.userId,
      listener: (context, state) {
        if (state is AuthenticatedState) {

        }
      },
      builder: (context, state) {
        if (state is! AuthenticatedState) {
          return Gaps.empty;
        }
        return CardCupertinoEffect(
          onPressed: () {
            context.pushRoute(const NotificationMainRoute());
          },
          child: Padding(
            padding: padding ?? const EdgeInsets.all(Dimens.pad),
            child: NotificationIconCount(
              badgeBorderColor: badgeBorderColor,
              count: 0,
            ),
          ),
        );
      },
    );
  }
}

class NotificationIconCount extends StatelessWidget {
  const NotificationIconCount({
    super.key,
    required this.badgeBorderColor,
    this.count = 0,
  });

  final Color? badgeBorderColor;
  final int count;

  @override
  Widget build(BuildContext context) {
    String displayCount;
    final overCount = count > 9;
    if (overCount) {
      displayCount = '9+';
    } else {
      displayCount = count.toString();
    }
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Assets.icons.notiBell.svg(
          color: context.theme.primaryColor,
        ),
        if (count > 0)
          Positioned(
            top: 0,
            right: -9.5,
            child: Container(
              alignment: Alignment.center,
              constraints: const BoxConstraints(
                minWidth: 21,
                minHeight: 17,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: badgeBorderColor ?? Colors.white,
                ),
                borderRadius: overCount ? BorderRadius.circular(Dimens.rad_max) : null,
                color: Colors.red,
                shape: overCount ? BoxShape.rectangle : BoxShape.circle,
              ),
              child: displayCount.text.size(9).medium.colorOnPrimary(context).letterSpacing(-1).make(),
            ),
          ),
      ],
    );
  }
}
