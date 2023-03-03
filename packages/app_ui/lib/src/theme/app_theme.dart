import 'package:app_ui/src/all_file.dart';
import 'package:app_ui/src/colors/app_colors_extension.dart';
import 'package:app_ui/src/typography/app_text_theme.dart';
import 'package:app_ui/src/typography/app_textfield_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class AppTheme {
  static ThemeData getTheme({bool isDark = false, String? fontFamily}) {
    final colorScheme = AppColorExtension.colorSchemaFrom(isDark: isDark);
    final onPrimarySurfaceColor = isDark ? colorScheme.onSurface : colorScheme.onPrimary;

    final textTheme = AppTextThemeExtension.getTextTheme(isDark: isDark);
    final textExtensionTheme = AppTextThemeExtension.form(isDark);
    final appColor = AppColorExtension.form(isDark);
    return ThemeData(
      colorScheme: colorScheme,
      fontFamily: fontFamily,
      cupertinoOverrideTheme: CupertinoThemeData(
        primaryColor: colorScheme.primary,
        scaffoldBackgroundColor: colorScheme.background,
      ),
      brightness: colorScheme.brightness,
      primaryColor: colorScheme.primary,
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      cardColor: colorScheme.surface,
      dividerColor: appColor.divider,
      dialogBackgroundColor: colorScheme.background,
      indicatorColor: onPrimarySurfaceColor,
      textTheme: textTheme,
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        contentPadding: EdgeInsets.zero,
        fillColor: appColor.divider,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppTextFieldTheme.defaultRadius),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppTextFieldTheme.defaultRadius),
          borderSide: BorderSide(
            color: colorScheme.primary,
            width: AppTextFieldTheme.defaultBorderWidth,
          ),
        ),
      ),
      applyElevationOverlayColor: isDark,
      hintColor: AppTextThemeExtension.form(isDark).textHint.color,
      dividerTheme: DividerThemeData(
        color: AppColorExtension.form(isDark).divider,
        thickness: 1,
      ),
      appBarTheme: AppBarTheme(
        color: colorScheme.surface,
        elevation: 0.5,
        titleTextStyle: textExtensionTheme.titleLarge,
      ),
      tabBarTheme: TabBarTheme(
        indicator: RectangularIndicator(
          topLeftRadius: Dimens.rad_max,
          topRightRadius: Dimens.rad_max,
          bottomLeftRadius: Dimens.rad_max,
          bottomRightRadius: Dimens.rad_max,
          horizontalPadding: 0,
          color: AppColorExtension.form(isDark).lightPrimary,
        ),
        labelColor: colorScheme.primary,
        labelStyle: AppTextThemeExtension.form(isDark).text.copyWith(fontWeight: FontWeight.w600),
        unselectedLabelColor: AppColorExtension.form(isDark).text,
        unselectedLabelStyle: AppTextThemeExtension.form(isDark).text.copyWith(fontWeight: FontWeight.w400),
      ),
      sliderTheme: SliderThemeData(
        activeTickMarkColor: Colors.transparent,
        inactiveTickMarkColor: Colors.transparent,
        inactiveTrackColor: AppColorExtension.form(isDark).actionColorInactive,
      ),
      extensions: [
        AppColorExtension.form(isDark),
        AppTextThemeExtension.form(isDark),
      ],
    );
  }
}
