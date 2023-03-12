import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.child,
    this.label,
    this.onPressed,
    this.style,
  });

  final Widget? child;
  final String? label;
  final VoidCallback? onPressed;

  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: style ?? AppButtonTheme.primaryStyle(context),
      child: child ?? label?.text.make(),
    );
  }
}
