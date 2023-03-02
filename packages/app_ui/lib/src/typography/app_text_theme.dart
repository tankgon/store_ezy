import 'package:app_ui/src/colors/app_colors_extension.dart';
import 'package:app_ui/src/layout/dimens.dart';
import 'package:app_ui/src/typography/font_weights.dart';
import 'package:flutter/material.dart';

extension AppThemeTextContextExtend on BuildContext {
  AppTextThemeExtension get themeText => Theme.of(this).extension<AppTextThemeExtension>() ?? AppTextThemeExtension.light;
}

@immutable
class AppTextThemeExtension extends ThemeExtension<AppTextThemeExtension> {
  const AppTextThemeExtension({
    required this.text,
    required this.textHint,
    required this.textLarge,
  });

  static TextStyle defaultText = TextStyle(
    color: AppColorExtension.light.text,
    fontSize: Dimens.text,
  );

  static AppTextThemeExtension dark = AppTextThemeExtension(
    text: defaultText,
    textHint: defaultText.copyWith(
      color: Colors.grey,
    ),
    textLarge: defaultText.copyWith(
      fontSize: Dimens.text_XL3,
      fontStyle: FontStyle.normal,
      fontWeight: BaseFontWeight.bold,
    ),
  );

  static final AppTextThemeExtension light = AppTextThemeExtension(
    text: defaultText,
    textHint: defaultText.copyWith(
      color: Colors.grey,
    ),
    textLarge: defaultText.copyWith(
      fontSize: Dimens.text_XL3,
      fontStyle: FontStyle.normal,
      fontWeight: BaseFontWeight.bold,
    ),
  );

  final TextStyle text;
  final TextStyle textHint;
  final TextStyle textLarge;

  @override
  AppTextThemeExtension copyWith({TextStyle? textStyle, TextStyle? danger}) {
    return AppTextThemeExtension(
      text: textStyle ?? text,
      textHint: textStyle ?? textHint,
      textLarge: textStyle ?? textLarge,
    );
  }

  @override
  AppTextThemeExtension lerp(ThemeExtension<AppTextThemeExtension>? other, double t) {
    if (other is! AppTextThemeExtension) {
      return this;
    }
    return AppTextThemeExtension(
      text: TextStyle.lerp(text, other.text, t) ?? text,
      textHint: TextStyle.lerp(textHint, other.textHint, t) ?? textHint,
      textLarge: TextStyle.lerp(textLarge, other.textLarge, t) ?? textLarge,
    );
  }

  factory AppTextThemeExtension.of(BuildContext context) {
    return Theme.of(context).extension as AppTextThemeExtension;
  }

  factory AppTextThemeExtension.form(bool isDark) {
    return isDark ? AppTextThemeExtension.dark : AppTextThemeExtension.light;
  }

  static TextTheme getTextTheme({bool isDark = false}) {
    final body = AppTextThemeExtension.form(isDark).text;
    final large = AppTextThemeExtension.form(isDark).textLarge;
    return TextTheme(
      bodyMedium: body,
      bodyLarge: large,
    );
  }
}
