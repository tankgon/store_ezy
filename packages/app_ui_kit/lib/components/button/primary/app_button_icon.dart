import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:flutter/cupertino.dart';

class AppButtonIcon extends StatelessWidget {
  const AppButtonIcon({
    super.key,
    this.onPressed,
    this.color,
    this.icon,
    this.padding,
  });

  final IconData? icon;
  final VoidCallback? onPressed;

  final Color? color;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: padding ?? Dimens.edge_XS2,
      onPressed: onPressed,
      color: color,
      child: Icon(
        icon,
        color: context.theme.iconButtonTheme.style?.iconColor?.resolve({MaterialState.pressed}) ?? Colors.grey,
      ),
    );
  }
}
