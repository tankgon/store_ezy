import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:flutter/cupertino.dart';

class AppButtonText extends StatelessWidget {
  const AppButtonText({
    super.key,
    this.child,
    this.label,
    this.onPressed,
    this.color,
    this.padding,
  });

  final Widget? child;
  final String? label;
  final VoidCallback? onPressed;
  final EdgeInsets? padding;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: padding,
      minSize: padding != null ? 0 : kMinInteractiveDimensionCupertino,
      onPressed: onPressed,
      child: child ?? label?.text.textBase.medium.color(color ?? Theme.of(context).primaryColor).make() ?? const SizedBox.shrink(),
    );
  }
}
