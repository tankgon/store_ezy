import 'package:ez_store/all_file/all_file.dart';

extension AppThemeContextExtend on BuildContext {
  AppThemeExtension get themeColor => Theme.of(this).extension<AppThemeExtension>() ?? AppThemeExtension.light;
}

@immutable
class AppThemeExtension extends ThemeExtension<AppThemeExtension> {
  const AppThemeExtension({
    required this.orange1,
    required this.orange6,
    required this.blue1,
    required this.lime8,
    required this.n3,
    required this.n7,
    required this.conditionItem,
    required this.actionColor,
    required this.actionColorGray,
    required this.headerColor,
    required this.red,
    required this.redAlert,
    required this.green,
    required this.error,
    required this.delete,
    required this.background,
    required this.grayBackground,
    required this.divider,
    required this.shadow10,
    required this.grayOpacity5,
    required this.gray,
    required this.grayLight,
    required this.gray5,
    required this.gray4,
    required this.dark1,
    required this.darkGray,
    required this.darkerGray,
    required this.gray6,
    required this.blue,
    required this.blueBlur,
    required this.lightBlue,
    required this.rating,
    required this.sharedLink,
    required this.successColor,
    required this.successDarkColor,
    required this.warningColor,
    required this.warningColor1,
    required this.infoColor,
  });

  final Color orange1;
  final Color orange6;
  final Color blue1;
  final Color actionColor;
  final Color actionColorGray;
  final Color conditionItem;

  final Color headerColor;

  final Color lime8;

  final Color red;
  final Color redAlert;
  final Color green;
  final Color error;
  final Color delete;

  final Color background;
  final Color grayBackground;

  final Color n3;
  final Color n7;

  final Color divider;
  final Color shadow10;
  final Color grayOpacity5;
  final Color gray;
  final Color grayLight;
  final Color gray5;
  final Color gray4;
  final Color dark1;
  final Color darkGray;
  final Color darkerGray;
  final Color gray6;
  final Color blue;
  final Color blueBlur;
  final Color lightBlue;
  final Color rating;
  final Color sharedLink;

  final Color successColor;
  final Color successDarkColor;
  final Color warningColor;
  final Color warningColor1;
  final Color infoColor;

  static const AppThemeExtension dark = AppThemeExtension(
    orange1: Color(0xffFFF7E6),
    orange6: Color(0xffFA8C16),
    blue1: Color(0xffE6F7FF),
    lime8: Color(0xff5B8C00),
    n3: Color(0xff545D69),
    n7: Color(0xffDADEE3),
    conditionItem: Color(0xfff5f5f5),
    headerColor: Color(0xc906c3ff),
    actionColor: Color(0xFF1A92FF),
    actionColorGray: Color(0xFF6D7580),
    red: Color(0xffDB4437),
    redAlert: Color(0xffF33131),
    green: Color(0xff0F9D58),
    error: Color(0xFFCB2222),
    delete: Color(0xFFCB2222),
    background: Color(0xFFffffff),
    grayBackground: Color(0xFFF2F2F2),
    divider: Color(0x1f191c1e),
    shadow10: Color(0x80000000),
    grayOpacity5: Color(0xFFE0E0E0),
    gray: Color(0xFF9B9B9B),
    grayLight: Color(0xFF6E798C),
    gray5: Color(0xFF8C8C8C),
    gray4: Color(0xFFBDBDBD),
    dark1: Color(0xFF081F32),
    darkGray: Color(0xFFBBBBBB),
    darkerGray: Color(0xFFE1E1E1),
    gray6: Color(0xFFF2F2F2),
    blue: Color(0xFF5587EA),
    blueBlur: Color(0xFFEAF0FD),
    lightBlue: Color(0xFFD1DDF2),
    rating: Color(0xFFFD8205),
    sharedLink: Color(0xFF4A9B60),
    successColor: Color(0xFF4A9B60),
    successDarkColor: Color(0xFF027A48),
    warningColor: Color(0xFFE29045),
    warningColor1: Color(0xFFC0962A),
    infoColor: Color(0xFF1890ff),
  );

  static const AppThemeExtension light = AppThemeExtension(
    orange1: Color(0xffFFF7E6),
    orange6: Color(0xffFA8C16),
    blue1: Color(0xffE6F7FF),
    lime8: Color(0xff5B8C00),
    n3: Color(0xff545D69),
    n7: Color(0xffDADEE3),
    conditionItem: Color(0xfff5f5f5),
    headerColor: Color(0xc906c3ff),
    actionColor: Color(0xFF1A92FF),
    actionColorGray: Color(0xFF6D7580),
    red: Color(0xffDB4437),
    redAlert: Color(0xffF33131),
    green: Color(0xff0F9D58),
    error: Color(0xFFCB2222),
    delete: Color(0xFFCB2222),
    background: Color(0xFFffffff),
    grayBackground: Color(0xFFF2F2F2),
    divider: Color(0x1f191c1e),
    shadow10: Color(0x80000000),
    grayOpacity5: Color(0xFFE0E0E0),
    gray: Color(0xFF9B9B9B),
    grayLight: Color(0xFF6E798C),
    gray5: Color(0xFF8C8C8C),
    gray4: Color(0xFFBDBDBD),
    dark1: Color(0xFF081F32),
    darkGray: Color(0xFFBBBBBB),
    darkerGray: Color(0xFFE1E1E1),
    gray6: Color(0xFFF2F2F2),
    blue: Color(0xFF5587EA),
    blueBlur: Color(0xFFEAF0FD),
    lightBlue: Color(0xFFD1DDF2),
    rating: Color(0xFFFD8205),
    sharedLink: Color(0xFF4A9B60),
    successColor: Color(0xFF4A9B60),
    successDarkColor: Color(0xFF027A48),
    warningColor: Color(0xFFE29045),
    warningColor1: Color(0xFFC0962A),
    infoColor: Color(0xFF1890ff),
  );

  @override
  AppThemeExtension copyWith({Color? textStyle, Color? danger}) {
    return AppThemeExtension(
      orange1: orange1,
      orange6: orange6,
      blue1: blue1,
      lime8: lime8,
      n3: n3,
      n7: n7,
      conditionItem: conditionItem,
      headerColor: headerColor,
      red: red,
      redAlert: redAlert,
      green: green,
      error: error,
      delete: delete,
      background: background,
      grayBackground: grayBackground,
      divider: divider,
      shadow10: shadow10,
      grayOpacity5: grayOpacity5,
      gray: gray,
      grayLight: grayLight,
      gray5: gray5,
      gray4: gray4,
      dark1: dark1,
      darkGray: darkGray,
      darkerGray: darkerGray,
      gray6: gray6,
      blue: blue,
      blueBlur: blueBlur,
      lightBlue: lightBlue,
      rating: rating,
      sharedLink: sharedLink,
      successColor: successColor,
      successDarkColor: successDarkColor,
      warningColor: warningColor,
      infoColor: infoColor,
      actionColor: actionColor,
      actionColorGray: actionColorGray,
      warningColor1: warningColor1,
    );
  }

  @override
  AppThemeExtension lerp(ThemeExtension<AppThemeExtension>? other, double t) {
    if (other is! AppThemeExtension) {
      return this;
    }
    return AppThemeExtension(
      conditionItem: Color.lerp(conditionItem, other.conditionItem, t) ?? conditionItem,
      orange1: Color.lerp(orange1, other.orange1, t) ?? orange1,
      orange6: Color.lerp(orange6, other.orange6, t) ?? orange6,
      blue1: Color.lerp(blue1, other.blue1, t) ?? blue1,
      lime8: Color.lerp(lime8, other.lime8, t) ?? lime8,
      n3: Color.lerp(n3, other.n3, t) ?? n3,
      n7: Color.lerp(n7, other.n7, t) ?? n7,
      headerColor: Color.lerp(headerColor, other.headerColor, t) ?? headerColor,
      red: Color.lerp(red, other.red, t) ?? red,
      redAlert: Color.lerp(redAlert, other.redAlert, t) ?? redAlert,
      green: Color.lerp(green, other.green, t) ?? green,
      error: Color.lerp(error, other.error, t) ?? error,
      delete: Color.lerp(delete, other.delete, t) ?? delete,
      background: Color.lerp(background, other.background, t) ?? background,
      grayBackground: Color.lerp(grayBackground, other.grayBackground, t) ?? grayBackground,
      divider: Color.lerp(divider, other.divider, t) ?? divider,
      shadow10: Color.lerp(shadow10, other.shadow10, t) ?? shadow10,
      grayOpacity5: Color.lerp(grayOpacity5, other.grayOpacity5, t) ?? grayOpacity5,
      gray: Color.lerp(gray, other.gray, t) ?? gray,
      grayLight: Color.lerp(grayLight, other.grayLight, t) ?? grayLight,
      gray5: Color.lerp(gray5, other.gray5, t) ?? gray5,
      gray4: Color.lerp(gray4, other.gray4, t) ?? gray4,
      dark1: Color.lerp(dark1, other.dark1, t) ?? dark1,
      darkGray: Color.lerp(darkGray, other.darkGray, t) ?? darkGray,
      darkerGray: Color.lerp(darkerGray, other.darkerGray, t) ?? darkerGray,
      gray6: Color.lerp(gray6, other.gray6, t) ?? gray6,
      blue: Color.lerp(blue, other.blue, t) ?? blue,
      blueBlur: Color.lerp(blueBlur, other.blueBlur, t) ?? blueBlur,
      lightBlue: Color.lerp(lightBlue, other.lightBlue, t) ?? lightBlue,
      rating: Color.lerp(rating, other.rating, t) ?? rating,
      sharedLink: Color.lerp(sharedLink, other.sharedLink, t) ?? sharedLink,
      successColor: Color.lerp(successColor, other.successColor, t) ?? successColor,
      successDarkColor: Color.lerp(successDarkColor, other.successDarkColor, t) ?? successDarkColor,
      warningColor: Color.lerp(warningColor, other.warningColor, t) ?? warningColor,
      infoColor: Color.lerp(infoColor, other.infoColor, t) ?? infoColor,
      actionColor: Color.lerp(actionColor, other.actionColor, t) ?? actionColor,
      actionColorGray: Color.lerp(actionColorGray, other.actionColorGray, t) ?? actionColorGray,
      warningColor1: Color.lerp(warningColor1, other.warningColor1, t) ?? warningColor1,
    );
  }

  factory AppThemeExtension.of(BuildContext context) {
    return Theme.of(context).extension as AppThemeExtension;
  }

  factory AppThemeExtension.form(bool isDark) {
    return isDark ? AppThemeExtension.dark : AppThemeExtension.light;
  }

  static ColorScheme colorSchemaFrom({required bool isDark}) {
    return isDark ? _colorSchemeDark : _colorScheme;
  }
}

const ColorScheme _colorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF1A92FF),
  onPrimary: Color(0xFFffffff),
  primaryContainer: Color(0xFFb7eaff),
  onPrimaryContainer: Color(0xFF001f2a),
  secondary: Color(0xFF4c616b),
  onSecondary: Color(0xFFffffff),
  secondaryContainer: Color(0xFFcfe6f1),
  onSecondaryContainer: Color(0xFF071e26),
  tertiary: Color(0xFF5b5b7e),
  onTertiary: Color(0xFFffffff),
  tertiaryContainer: Color(0xFFe1dfff),
  onTertiaryContainer: Color(0xFF181837),
  error: Color(0xFFCB2222),
  onError: Color(0xFFffffff),
  errorContainer: Color(0xFFffdad4),
  onErrorContainer: Color(0xFF410001),
  background: Color(0xFFffffff),
  onBackground: Color(0xFF191c1e),
  surface: Color(0xffffffff),
  onSurface: Color(0xFF191c1e),
  outline: Color(0xFF70787d),
  surfaceVariant: Color(0xFFdce4e8),
  onSurfaceVariant: Color(0xFF40484c),
);

const ColorScheme _colorSchemeDark = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF1A92FF),
  onPrimary: Color(0xFFffffff),
  primaryContainer: Color(0xFFb7eaff),
  onPrimaryContainer: Color(0xFF001f2a),
  secondary: Color(0xFF4c616b),
  onSecondary: Color(0xFFffffff),
  secondaryContainer: Color(0xFFcfe6f1),
  onSecondaryContainer: Color(0xFF071e26),
  tertiary: Color(0xFF5b5b7e),
  onTertiary: Color(0xFFffffff),
  tertiaryContainer: Color(0xFFe1dfff),
  onTertiaryContainer: Color(0xFF181837),
  error: Color(0xFFCB2222),
  onError: Color(0xFFffffff),
  errorContainer: Color(0xFFffdad4),
  onErrorContainer: Color(0xFF410001),
  background: Color(0xFFffffff),
  onBackground: Color(0xFF191c1e),
  surface: Color(0xffffffff),
  onSurface: Color(0xFF191c1e),
  outline: Color(0xFF70787d),
  surfaceVariant: Color(0xFFdce4e8),
  onSurfaceVariant: Color(0xFF40484c),
);
