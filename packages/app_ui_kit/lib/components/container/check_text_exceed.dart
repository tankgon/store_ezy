import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

class CheckTextExceed extends StatelessWidget {
  const CheckTextExceed({
    super.key,
    required this.content,
    required this.textStyle,
    required this.builder,
  });

  final String content;
  final TextStyle textStyle;
  final Widget Function(BuildContext context, TextStyle textStyle, bool isExceedMaxLines) builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final titleExceedMaxLines = ViewUtils.isTextExceedMaxLines(
          text: content,
          style: textStyle,
          maxLine: 1,
          maxWidth: constraints.maxWidth,
        );

        return builder(
          context,
          textStyle,
          titleExceedMaxLines,
        );
      },
    );
  }
}
