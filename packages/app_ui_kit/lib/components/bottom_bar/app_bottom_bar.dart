import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({
    super.key,
    required this.child,
    this.showDivider = true,
    this.padding,
  });

  final Widget child;
  final bool showDivider;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final safeArea = SafeArea(
      minimum: Dimens.bottomMinimum,
      top: false,
      bottom: true,
      left: false,
      right: false,
      child: Padding(
        padding: padding ?? const EdgeInsets.symmetric(horizontal: Dimens.pad),
        child: child,
      ),
    );

    if (showDivider == true) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(
            height: 1,
            thickness: 1,
          ),
          safeArea,
        ],
      ).backgroundColor(context.theme.colorScheme.surface);
    }

    return safeArea;
  }
}
