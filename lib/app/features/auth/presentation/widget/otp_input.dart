import 'package:ez_store/all_file/all_file.dart';
import 'package:pinput/pinput.dart';

class DefaultPinInput extends StatelessWidget {
  const DefaultPinInput({
    super.key,
    required this.length,
    this.controller,
    this.onCompleted,
    this.onEditing,
  });

  final int length;
  final TextEditingController? controller;
  final ValueChanged<String>? onCompleted;
  final VoidCallback? onEditing;

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 38,
      height: 44,
      textStyle: context.theme.textTheme.titleMedium,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.transparent,
        ),
        color: context.theme.inputDecorationTheme.fillColor,
        borderRadius: BorderRadius.circular(AppTextFieldTheme.defaultRadius),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(
        color: context.theme.inputDecorationTheme.focusedBorder?.borderSide.color ?? context.theme.primaryColor,
      ),
    );

    return Pinput(
      controller: controller,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: defaultPinTheme,
      length: length,
      onCompleted: onCompleted,
      onChanged: (value) {
        if (value.length != length) {
          onEditing?.call();
        }
      },
    );
  }
}
