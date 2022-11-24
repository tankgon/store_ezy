import 'package:ez_store/all_file/all_file.dart';

class AppIcon {
  AppIcon._();

  static Widget commentIcon(BuildContext context, {double? size, Color? color}) => Icon(
        Icons.messenger_outline_rounded,
        size: size,
        color: color ?? context.themeColor.actionColor,
      );

  static Widget userAvatar(
    BuildContext context, {
    double? size,
    Color? color,
  }) =>
      Icon(
        FontAwesomeIcons.solidCircleUser,
        color: color ?? context.themeColorText.text,
        size: size,
      );

  static Widget iconWarning(
    BuildContext context, {
    double? size,
    Color? color,
  }) =>
      Icon(
        FontAwesomeIcons.triangleExclamation,
        color: color ?? context.themeColor.warningColor,
        size: size,
      );

// static Widget userAvatar({double? size, Color? color}) => Assets.icons.avatarFill.svg(
//   color: color ?? context.themeColorText.textGray,
//   width: size,
//   height: size,
// );

}
