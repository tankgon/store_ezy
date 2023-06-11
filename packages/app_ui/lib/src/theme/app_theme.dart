import 'package:app_ui/app_ui.dart';
import 'package:app_ui/src/all_file.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class AppTheme {
  static ThemeData getTheme({bool isDark = false, String? fontFamily}) {
    final colorScheme = AppColorExtension.colorSchemaFrom(isDark: isDark);
    final onPrimarySurfaceColor =
        isDark ? colorScheme.onSurface : colorScheme.onPrimary;

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
      iconTheme: IconThemeData(color: appColor.grey),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          iconColor: MaterialStateProperty.all(appColor.greyDark),
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          padding: MaterialStateProperty.all(EdgeInsets.zero),
          minimumSize: MaterialStateProperty.all(Size.zero),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        isDense: true,
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
      buttonTheme: ButtonThemeData(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 12,
        ),
        buttonColor: colorScheme.primary,
        textTheme: ButtonTextTheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppButtonTheme.defaultRadius),
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(colorScheme.primary),
        side: BorderSide(
          color: appColor.greyLight,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.rad_XS2),
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
        labelStyle: AppTextThemeExtension.form(isDark)
            .text
            .copyWith(fontWeight: FontWeight.w600),
        unselectedLabelColor: AppColorExtension.form(isDark).text,
        unselectedLabelStyle: AppTextThemeExtension.form(isDark)
            .text
            .copyWith(fontWeight: FontWeight.w400),
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
