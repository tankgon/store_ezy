// import 'package:ez_store/all_file/all_file.dart';
//
// ///
// /// Color generator: https://material-foundation.github.io/material-theme-builder/#/custom
// ///
// class AppColor {
//   AppColor._();
//
//   static ColorScheme get schema =>
//       Get.isDarkMode ? _colorSchemeDark : _colorScheme;
//
//   static ColorScheme colorSchemaFrom({required bool isDark}) {
//     return isDark ? _colorSchemeDark : _colorScheme;
//   }
//
//   //// *** Primary *** ////
//
//   static const AppColorData primary =
//       AppColorData(light: Color(0xFF4885ED), dark: Color(0xff54d5ff));
//
//   static const AppColorData onPrimary =
//       AppColorData(light: Color(0xFFffffff), dark: Color(0xff003545));
//
//   static const AppColorData primaryContainer =
//       AppColorData(light: Color(0xFFb7eaff), dark: Color(0xff004d62));
//
//   static const AppColorData onPrimaryContainer =
//       AppColorData(light: Color(0xFF001f2a), dark: Color(0xffb7eaff));
//
//   //// *** Secondary *** ////
//
//   static const AppColorData secondary =
//       AppColorData(light: Color(0xFF4c616b), dark: Color(0xffb3cad5));
//
//   static const AppColorData onSecondary =
//       AppColorData(light: Color(0xFFffffff), dark: Color(0xff1e333c));
//
//   static const AppColorData secondaryContainer =
//       AppColorData(light: Color(0xFFcfe6f1), dark: Color(0xff354a53));
//
//   static const AppColorData onSecondaryContainer =
//       AppColorData(light: Color(0xFF071e26), dark: Color(0xffcfe6f1));
//
//   //// *** Tertiary *** ////
//
//   static const AppColorData tertiary =
//       AppColorData(light: Color(0xFF5b5b7e), dark: Color(0xffc4c3ea));
//
//   static const AppColorData onTertiary =
//       AppColorData(light: Color(0xFFffffff), dark: Color(0xff2d2d4d));
//
//   static const AppColorData tertiaryContainer =
//       AppColorData(light: Color(0xFFe1dfff), dark: Color(0xff444465));
//
//   static const AppColorData onTertiaryContainer =
//       AppColorData(light: Color(0xFF181837), dark: Color(0xffe1dfff));
//
//   //// *** Error *** ////
//
//   static const AppColorData onError =
//       AppColorData(light: Color(0xFFffffff), dark: Color(0xff680003));
//
//   static const AppColorData errorContainer =
//       AppColorData(light: Color(0xFFffdad4), dark: Color(0xff930006));
//
//   static const AppColorData onErrorContainer =
//       AppColorData(light: Color(0xFF410001), dark: Color(0xffffdad4));
//
//   static const AppColorData delete =
//       AppColorData(light: Color(0xFFCB2222), dark: Color(0xFFCB2222));
//
//   //// *** Background *** ////
//
//   static const AppColorData background =
//       AppColorData(light: Color(0xFFffffff), dark: Color(0xff191c1e));
//
//   static const AppColorData grayBackground =
//       AppColorData(light: Color(0xFFF2F2F2), dark: Color(0xFFF2F2F2));
//
//   static const AppColorData onBackground =
//       AppColorData(light: Color(0xFF191c1e), dark: Color(0xffe1e3e5));
//
//   // Ex: card background,
//
//   static const AppColorData surface =
//       AppColorData(light: Color(0xffffffff), dark: Color(0xff191c1e));
//
//   static const AppColorData onSurface =
//       AppColorData(light: Color(0xFF191c1e), dark: Color(0xffe1e3e5));
//
//   static const AppColorData outline =
//       AppColorData(light: Color(0xFF70787d), dark: Color(0xff8a9296));
//
//   static const AppColorData surfaceVariant =
//       AppColorData(light: Color(0xFFdce4e8), dark: Color(0xff40484c));
//
//   static const AppColorData onSurfaceVariant =
//       AppColorData(light: Color(0xFF40484c), dark: Color(0xffc0c8cc));
//
//   static const AppColorData tabSurface =
//       AppColorData(light: Color(0x33D1DDF2), dark: Color(0x33D5D7DA));
//
//   static const AppColorData divider =
//       AppColorData(light: Color(0x1f191c1e), dark: Color(0x1fe1e3e5));
//
//   static const AppColorData shadow10 =
//       AppColorData(light: Color(0x80000000), dark: Color(0xE6FFFFFF));
//
//   static const AppColorData actionColor = primary;
//
//   static const AppColorData grayOpacity5 =
//       AppColorData(light: Color(0xFFE0E0E0), dark: Color(0xFFE0E0E0));
//
//   static const AppColorData gray5 =
//       AppColorData(light: Color(0xFF8C8C8C), dark: Color(0xFF8C8C8C));
//
//   static const AppColorData darkGray =
//       AppColorData(light: Color(0xFFBBBBBB), dark: Color(0xFFBBBBBB));
//
//   static const AppColorData darkerGray =
//       AppColorData(light: Color(0xFFE1E1E1), dark: Color(0xFFE1E1E1));
//
//   static const AppColorData gray6 =
//       AppColorData(light: Color(0xFFF2F2F2), dark: Color(0xFFF2F2F2));
//
//   static const AppColorData blue =
//       AppColorData(light: Color(0xFF5587EA), dark: Color(0xFF5587EA));
//
//   static const AppColorData blueBlur =
//       AppColorData(light: Color(0xFFEAF0FD), dark: Color(0xFFEAF0FD));
//
//   static const AppColorData lightBlue =
//       AppColorData(light: Color(0xFFD1DDF2), dark: Color(0xFFD1DDF2));
//
//   static const AppColorData rating =
//       AppColorData(light: Color(0xFFFD8205), dark: Color(0xFFFD8205));
//
//   static const AppColorData sharedLink =
//       AppColorData(light: Color(0xFF4A9B60), dark: Color(0xFF4A9B60));
//
//   //// *** TEXT Color *** ////
//
//   static const AppColorData text =
//       AppColorData(light: Color(0xFF444444), dark: Color(0xFFFAFBFC));
//
//   static const AppColorData textLink =
//       AppColorData(light: Color(0xFF5587EA), dark: Color(0xFF5587EA));
//
//   static const AppColorData textGray =
//       AppColorData(light: Color(0xFF444444), dark: Color(0xFF666666));
//
//   static const AppColorData textHint =
//       AppColorData(light: Color(0xFF9B9B9B), dark: Color(0xFF989898));
//
//   static const AppColorData textHintLight =
//       AppColorData(light: Color(0xFFE4E4E4), dark: Color(0xFFE4E4E4));
//
//   static const AppColorData textHeading =
//       AppColorData(light: Color(0xFF081F32), dark: Color(0xFF666666));
//
//   static const AppColorData textDisable =
//       AppColorData(light: Color(0xFFD4E2FA), dark: Color(0xFFCEDBF2));
//
//   //// *** Current Project Color *** ////
//
//   static const AppColorData successColor =
//       AppColorData(light: Color(0xFF4A9B60), dark: Color(0xFF4A9B60));
//
//   static const AppColorData successDarkColor =
//       AppColorData(light: Color(0xFF027A48), dark: Color(0xFF027A48));
//
//   static const AppColorData warningColor =
//       AppColorData(light: Color(0xFFC0962A), dark: Color(0xFFC0962A));
//
//   static const AppColorData infoColor =
//       AppColorData(light: Color(0xFF1890ff), dark: Color(0xFF1890ff));
//
//   //// ******   Dynamic Colors   ****** ////
//
//   static const Color loginGradientStart = Color(0xFFfbab66);
//   static const Color loginGradientEnd = Color(0xFFf7418c);
//
//   static const LinearGradient primaryGradient = LinearGradient(
//     colors: <Color>[loginGradientStart, loginGradientEnd],
//     stops: <double>[0.0, 1.0],
//     begin: Alignment.topCenter,
//     end: Alignment.bottomCenter,
//   );
//
//   static MaterialColor get materialWhite => const MaterialColor(
//         0xFFFFFFFF,
//         <int, Color>{
//           50: Color(0xFFFFFFFF),
//           100: Color(0xFFFFFFFF),
//           200: Color(0xFFFFFFFF),
//           300: Color(0xFFFFFFFF),
//           400: Color(0xFFFFFFFF),
//           500: Color(0xFFFFFFFF),
//           600: Color(0xFFFFFFFF),
//           700: Color(0xFFFFFFFF),
//           800: Color(0xFFFFFFFF),
//           900: Color(0xFFFFFFFF),
//         },
//       );
//
//   static getTransparentGrey() {
//     return Colors.grey[600]!.withOpacity(0.3);
//   }
// }
//
// class AppColorData {
//   final Color light;
//   final Color dark;
//
//   const AppColorData({required this.light, required this.dark});
//
//   Color get dynamic => Get.isDarkMode ? dark : light;
//
//   Color form(isDark) => isDark ? dark : light;
// }
//
// final ColorScheme _colorScheme = ColorScheme(
//   brightness: Brightness.light,
//   primary: context.theme.primaryColor.light,
//   onPrimary: context.themeColor.onPrimary.light,
//   primaryContainer: context.themeColor.primaryContainer.light,
//   onPrimaryContainer: context.themeColor.onPrimaryContainer.light,
//   secondary: context.themeColor.secondary.light,
//   onSecondary: context.themeColor.onSecondary.light,
//   secondaryContainer: context.themeColor.secondaryContainer.light,
//   onSecondaryContainer: context.themeColor.onSecondaryContainer.light,
//   tertiary: context.themeColor.tertiary.light,
//   onTertiary: context.themeColor.onTertiary.light,
//   tertiaryContainer: context.themeColor.tertiaryContainer.light,
//   onTertiaryContainer: context.themeColor.onTertiaryContainer.light,
//   error: context.themeColor.error.light,
//   onError: context.themeColor.onError.light,
//   errorContainer: context.themeColor.errorContainer.light,
//   onErrorContainer: context.themeColor.onErrorContainer.light,
//   background: context.themeColor.background.light,
//   onBackground: context.themeColor.onBackground.light,
//   surface: context.themeColor.surface.light,
//   onSurface: context.themeColor.onSurface.light,
//   outline: context.themeColor.outline.light,
//   surfaceVariant: context.themeColor.surfaceVariant.light,
//   onSurfaceVariant: context.themeColor.onSurfaceVariant.light,
// );
//
// final ColorScheme _colorSchemeDark = ColorScheme(
//   brightness: Brightness.dark,
//   primary: context.theme.primaryColor.dark,
//   onPrimary: context.themeColor.onPrimary.dark,
//   primaryContainer: context.themeColor.primaryContainer.dark,
//   onPrimaryContainer: context.themeColor.onPrimaryContainer.dark,
//   secondary: context.themeColor.secondary.dark,
//   onSecondary: context.themeColor.onSecondary.dark,
//   secondaryContainer: context.themeColor.secondaryContainer.dark,
//   onSecondaryContainer: context.themeColor.onSecondaryContainer.dark,
//   tertiary: context.themeColor.tertiary.dark,
//   onTertiary: context.themeColor.onTertiary.dark,
//   tertiaryContainer: context.themeColor.tertiaryContainer.dark,
//   onTertiaryContainer: context.themeColor.onTertiaryContainer.dark,
//   error: context.themeColor.error.dark,
//   onError: context.themeColor.onError.dark,
//   errorContainer: context.themeColor.errorContainer.dark,
//   onErrorContainer: context.themeColor.onErrorContainer.dark,
//   background: context.themeColor.background.dark,
//   onBackground: context.themeColor.onBackground.dark,
//   surface: context.themeColor.surface.dark,
//   onSurface: context.themeColor.onSurface.dark,
//   outline: context.themeColor.outline.dark,
//   surfaceVariant: context.themeColor.surfaceVariant.dark,
//   onSurfaceVariant: context.themeColor.onSurfaceVariant.dark,
// );
