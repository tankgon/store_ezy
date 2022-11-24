import 'package:ez_store/all_file/all_file.dart';

class ViewUtils {
  ViewUtils._();

  // Note: get maxWidth from LayoutBuilder
  static bool isTextExceedMaxLines(
      {required String text,
      required TextStyle style,
      required int maxLine,
      double? maxWidth}) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text, style: style),
        maxLines: maxLine,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: maxWidth ?? double.infinity);

    return textPainter.didExceedMaxLines;
  }
}
