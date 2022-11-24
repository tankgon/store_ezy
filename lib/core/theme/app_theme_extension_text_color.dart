import 'package:ez_store/all_file/all_file.dart';

extension AppThemeTextColorContextExtend on BuildContext {
  AppThemeTextColorExtension get themeColorText =>
      Theme.of(this).extension<AppThemeTextColorExtension>() ??
      AppThemeTextColorExtension.light;
}

@immutable
class AppThemeTextColorExtension
    extends ThemeExtension<AppThemeTextColorExtension> {
  const AppThemeTextColorExtension({
    required this.text,
    required this.textLink,
    required this.textGray,
    required this.textHint,
    required this.textHintLight,
    required this.textHeading,
    required this.textDisable,
    required this.textBiReal,
    required this.textBiRealLight,
  });

  static const AppThemeTextColorExtension dark = AppThemeTextColorExtension(
    text: Color(0xFF444444),
    textLink: Color(0xFF5587EA),
    textGray: Color(0xFF444444),
    textHint: Color(0xFF9B9B9B),
    textHintLight: Color(0xFFE4E4E4),
    textHeading: Color(0xFF081F32),
    textDisable: Color(0xFFD4E2FA),
    textBiReal: Color(0xFF0A0961),
    textBiRealLight: Color(0xFF1077E8),
  );

  static const AppThemeTextColorExtension light = AppThemeTextColorExtension(
    text: Color(0xFF444444),
    textLink: Color(0xFF5587EA),
    textGray: Color(0xFF444444),
    textHint: Color(0xFF9B9B9B),
    textHintLight: Color(0xFFE4E4E4),
    textHeading: Color(0xFF081F32),
    textDisable: Color(0xFFD4E2FA),
    textBiReal: Color(0xFF0A0961),
    textBiRealLight: Color(0xFF1077E8),
  );

  final Color text;
  final Color textLink;
  final Color textGray;
  final Color textHint;
  final Color textHintLight;
  final Color textHeading;
  final Color textDisable;
  final Color textBiReal;
  final Color textBiRealLight;

  @override
  AppThemeTextColorExtension copyWith({Color? textStyle, Color? danger}) {
    return AppThemeTextColorExtension(
      text: textStyle ?? text,
      textLink: textStyle ?? textLink,
      textGray: textStyle ?? textGray,
      textHint: textStyle ?? textHint,
      textHintLight: textStyle ?? textHintLight,
      textHeading: textStyle ?? textHeading,
      textDisable: textStyle ?? textDisable,
      textBiReal: textStyle ?? textBiReal,
      textBiRealLight: textStyle ?? textBiRealLight,
    );
  }

  @override
  AppThemeTextColorExtension lerp(
      ThemeExtension<AppThemeTextColorExtension>? other, double t) {
    if (other is! AppThemeTextColorExtension) {
      return this;
    }
    return AppThemeTextColorExtension(
      text: Color.lerp(text, other.text, t) ?? text,
      textLink: Color.lerp(textLink, other.textLink, t) ?? textLink,
      textGray: Color.lerp(textGray, other.textGray, t) ?? textGray,
      textHint: Color.lerp(textHint, other.textHint, t) ?? textHint,
      textHintLight:
          Color.lerp(textHintLight, other.textHintLight, t) ?? textHintLight,
      textHeading: Color.lerp(textHeading, other.textHeading, t) ?? textHeading,
      textDisable: Color.lerp(textDisable, other.textDisable, t) ?? textDisable,
      textBiReal: Color.lerp(textBiReal, other.textBiReal, t) ?? textBiReal,
      textBiRealLight: Color.lerp(textBiRealLight, other.textBiRealLight, t) ??
          textBiRealLight,
    );
  }

  factory AppThemeTextColorExtension.of(BuildContext context) {
    return Theme.of(context).extension as AppThemeTextColorExtension;
  }

  factory AppThemeTextColorExtension.form(bool isDark) {
    return isDark
        ? AppThemeTextColorExtension.dark
        : AppThemeTextColorExtension.light;
  }
}
