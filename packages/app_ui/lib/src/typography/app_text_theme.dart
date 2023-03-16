import 'package:app_ui/app_ui.dart';
import 'package:app_ui/src/all_file.dart';
import 'package:app_ui/src/colors/app_colors_extension.dart';
import 'package:flutter/material.dart';

extension AppThemeTextContextExtend on BuildContext {
  AppTextThemeExtension get themeText => Theme.of(this).extension<AppTextThemeExtension>() ?? AppTextThemeExtension.light;
}

@immutable
class AppTextThemeExtension extends ThemeExtension<AppTextThemeExtension> {
  const AppTextThemeExtension({
    required this.text,
    required this.textHint,
    required this.titleLarge,
    required this.headlineSmall,
    required this.titleMedium,
    required this.bodySmall,
    required this.labelLarge,
  });

  final TextStyle text;
  final TextStyle textHint;

  final TextStyle titleLarge; // H6
  final TextStyle headlineSmall; // H5
  final TextStyle titleMedium; // Subtitle
  final TextStyle bodySmall; // Caption
  final TextStyle labelLarge; // Button

  static TextStyle defaultText = TextStyle(
    color: AppColorExtension.light.text,
    fontSize: FontSizeService().text,
  );

  static final AppTextThemeExtension light = AppTextThemeExtension(
    text: defaultText,
    textHint: defaultText.copyWith(
      color: Colors.grey,
    ),
    titleLarge: defaultText.copyWith(
      fontSize: FontSizeService().text_XL5,
      fontWeight: FontWeight.w800,
      color: AppColorExtension.light.greyDarkest,
    ),
    headlineSmall: defaultText.copyWith(
      fontWeight: FontWeight.w600,
      color: AppColorExtension.light.greyDarkest,
    ),
    titleMedium: defaultText.copyWith(
      fontWeight: FontWeight.w500,
      color: AppColorExtension.light.greyDarkest,
    ),
    bodySmall: defaultText.copyWith(
      fontSize: FontSizeService().text_S,
      fontWeight: FontWeight.w400,
      color: AppColorExtension.light.grey,
    ),
    labelLarge: defaultText.copyWith(
      fontWeight: FontWeight.w500,
      color: AppColorExtension.light.greyDark,
    ),
  );

  static AppTextThemeExtension dark = AppTextThemeExtension(
    text: defaultText,
    textHint: defaultText.copyWith(
      color: Colors.grey,
    ),
    titleLarge: defaultText.copyWith(
      fontSize: FontSizeService().text_XL5,
      fontWeight: FontWeight.w800,
      color: AppColorExtension.light.greyDarkest,
    ),
    headlineSmall: defaultText.copyWith(
      fontSize: FontSizeService().text_XL,
      fontWeight: FontWeight.w600,
      color: AppColorExtension.light.greyDarkest,
    ),
    titleMedium: defaultText.copyWith(
      fontWeight: FontWeight.w500,
      color: AppColorExtension.light.greyDarkest,
    ),
    bodySmall: defaultText.copyWith(
      fontSize: FontSizeService().text_S,
      fontWeight: FontWeight.w400,
      color: AppColorExtension.light.grey,
    ),
    labelLarge: defaultText.copyWith(
      fontWeight: FontWeight.w500,
      color: AppColorExtension.light.greyDark,
    ),
  );

  @override
  AppTextThemeExtension copyWith({TextStyle? textStyle, TextStyle? danger}) {
    return AppTextThemeExtension(
      text: textStyle ?? text,
      textHint: textStyle ?? textHint,
      titleLarge: textStyle ?? titleLarge,
      headlineSmall: textStyle ?? headlineSmall,
      titleMedium: textStyle ?? titleMedium,
      bodySmall: textStyle ?? bodySmall,
      labelLarge: textStyle ?? labelLarge,
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
      titleLarge: TextStyle.lerp(titleLarge, other.titleLarge, t) ?? titleLarge,
      headlineSmall: TextStyle.lerp(headlineSmall, other.headlineSmall, t) ?? headlineSmall,
      titleMedium: TextStyle.lerp(titleMedium, other.titleMedium, t) ?? titleMedium,
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t) ?? bodySmall,
      labelLarge: TextStyle.lerp(labelLarge, other.labelLarge, t) ?? labelLarge,
    );
  }

  factory AppTextThemeExtension.of(BuildContext context) {
    return Theme.of(context).extension as AppTextThemeExtension;
  }

  factory AppTextThemeExtension.form(bool isDark) {
    return isDark ? AppTextThemeExtension.dark : AppTextThemeExtension.light;
  }

  static TextTheme getTextTheme({bool isDark = false}) {
    final textThemeExtension = AppTextThemeExtension.form(isDark);
    return TextTheme(
      bodyMedium: textThemeExtension.text.copyWith(
        height: 1.3,
      ),

      // H6
      titleLarge: textThemeExtension.titleLarge,
      // H5
      headlineSmall: textThemeExtension.headlineSmall,
      // Subtitle
      titleMedium: textThemeExtension.titleMedium,
      // Caption
      bodySmall: textThemeExtension.bodySmall,
      // Button
      labelLarge: textThemeExtension.labelLarge,
    );
  }
}
