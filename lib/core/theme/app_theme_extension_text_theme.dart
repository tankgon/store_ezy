// import 'package:ez_store/all_file/all_file.dart';
//
// extension AppThemeTextContextExtend on BuildContext {
//   AppThemeTextExtension get themeText =>
//       Theme.of(this).extension<AppThemeTextExtension>() ??
//       AppThemeTextExtension.light;
// }
//
// @immutable
// class AppThemeTextExtension extends ThemeExtension<AppThemeTextExtension> {
//   const AppThemeTextExtension({
//     required this.text,
//     required this.textHint,
//     required this.textHeadline,
//   });
//
//   static TextStyle defaultText = TextStyle(
//     color: AppThemeTextColorExtension.light.text,
//     fontSize: Dimens.text,
//   );
//
//   static AppThemeTextExtension dark = AppThemeTextExtension(
//     text: defaultText,
//     textHint: defaultText.copyWith(
//       color: AppThemeTextColorExtension.dark.textHint,
//     ),
//     textHeadline: defaultText.copyWith(
//       fontSize: Dimens.text_XL3,
//       fontStyle: FontStyle.normal,
//       fontWeight: FontWeight.w700,
//     ),
//   );
//
//   static final AppThemeTextExtension light = AppThemeTextExtension(
//     text: defaultText,
//     textHint: defaultText.copyWith(
//       color: AppThemeTextColorExtension.dark.textHint,
//     ),
//     textHeadline: defaultText.copyWith(
//       fontSize: Dimens.text_XL3,
//       fontStyle: FontStyle.normal,
//       fontWeight: FontWeight.w700,
//     ),
//   );
//
//   final TextStyle text;
//   final TextStyle textHint;
//   final TextStyle textHeadline;
//
//   @override
//   AppThemeTextExtension copyWith({TextStyle? textStyle, TextStyle? danger}) {
//     return AppThemeTextExtension(
//       text: textStyle ?? text,
//       textHint: textStyle ?? textHint,
//       textHeadline: textStyle ?? textHeadline,
//     );
//   }
//
//   @override
//   AppThemeTextExtension lerp(
//       ThemeExtension<AppThemeTextExtension>? other, double t) {
//     if (other is! AppThemeTextExtension) {
//       return this;
//     }
//     return AppThemeTextExtension(
//       text: TextStyle.lerp(text, other.text, t) ?? text,
//       textHint: TextStyle.lerp(textHint, other.textHint, t) ?? textHint,
//       textHeadline:
//           TextStyle.lerp(textHeadline, other.textHeadline, t) ?? textHeadline,
//     );
//   }
//
//   factory AppThemeTextExtension.of(BuildContext context) {
//     return Theme.of(context).extension as AppThemeTextExtension;
//   }
//
//   factory AppThemeTextExtension.form(bool isDark) {
//     return isDark ? AppThemeTextExtension.dark : AppThemeTextExtension.light;
//   }
//
//   static TextTheme getTextTheme({bool isDark = false}) {
//     var body = AppThemeTextExtension.form(isDark).text;
//     var headline = AppThemeTextExtension.form(isDark).textHeadline;
//     return TextTheme(
//       bodyText2: body,
//       bodyText1: body,
//       headline1: headline.copyWith(
//         fontSize: 42,
//         letterSpacing: -1.5,
//         fontWeight: FontWeight.w500,
//         color: headline.color,
//       ),
//       headline2: headline.copyWith(
//         fontSize: 34,
//         letterSpacing: -0.5,
//         fontWeight: FontWeight.w500,
//       ),
//       headline3: headline.copyWith(
//         fontSize: 30,
//         letterSpacing: 0,
//       ),
//       headline4: headline.copyWith(
//         fontSize: 26,
//         letterSpacing: 0.25,
//       ),
//       headline5: headline.copyWith(
//         fontSize: 22,
//         letterSpacing: 0,
//         fontWeight: FontWeight.w700,
//       ),
//       headline6: headline.copyWith(
//         fontSize: 20,
//         fontWeight: FontWeight.w700,
//       ),
//       subtitle1: body.copyWith(fontSize: 18, letterSpacing: 0.15),
//       subtitle2: body.copyWith(
//           fontSize: 16, letterSpacing: 0.1, fontWeight: FontWeight.w500),
//       caption: body.copyWith(
//         fontSize: 14,
//         letterSpacing: 0.4,
//       ),
//       overline: body.copyWith(fontSize: 14, letterSpacing: 1.5),
//       button: body.copyWith(fontWeight: FontWeight.w700),
//     );
//   }
//
//   static Map<String, Style> getHtmlStyle(BuildContext context) {
//     var theme = context.theme;
//     var lineHeight = LineHeight.em(1.3);
//     return {
//       ...Style.fromThemeData(theme),
//       "body": Style(
//         margin: EdgeInsets.zero,
//         padding: EdgeInsets.zero,
//       ),
//       "html": Style(
//         margin: EdgeInsets.zero,
//         padding: EdgeInsets.zero,
//         lineHeight: lineHeight,
//       ),
//       "p": Style(
//         margin: EdgeInsets.zero,
//         padding: EdgeInsets.zero,
//       ),
//       "strong": Style(
//         textAlign: TextAlign.center,
//       ),
//       "li": Style(
//         margin: EdgeInsets.zero,
//         padding: EdgeInsets.zero,
//       ),
//       "li:not(:last-child)": Style(
//         padding: const EdgeInsets.only(bottom: 0, left: 0),
//       ),
//       "ul": Style(
//         listStylePosition: ListStylePosition.OUTSIDE,
//       ),
//       "table": Style(
//         backgroundColor:
//             Theme.of(context).unselectedWidgetColor.withOpacity(0.1),
//         // border: Border.all(color: Theme.of(context).hintColor),
//       ),
//       "tr": Style(
//         border: Border.all(color: Theme.of(context).hintColor.withOpacity(0.3)),
//         // border: Border(bottom: BorderSide(color: Colors.grey)),
//       ),
//       "th": Style(
//         padding: const EdgeInsets.all(6),
//         backgroundColor: Colors.grey,
//       ),
//       "td": Style(
//         padding: const EdgeInsets.all(6),
//       ),
//     };
//   }
// }
