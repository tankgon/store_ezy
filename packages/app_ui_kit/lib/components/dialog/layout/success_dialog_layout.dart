import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/button/primary/app_button.dart';
import 'package:app_ui_kit/components/dialog/dialog_config.dart';
import 'package:lottie/lottie.dart';

class SuccessDialogLayout extends StatelessWidget {
  const SuccessDialogLayout({
    super.key,
    this.title,
    this.content,
    this.child,
    this.onConfirm,
    this.onAutoDismiss,
  });

  final String? title;
  final String? content;
  final Widget? child;
  final VoidCallback? onConfirm;
  final VoidCallback? onAutoDismiss;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: context.dialogConfigData.defaultPadding,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Lottie.asset(
            'assets/lottie/ic_check.json',
            package: 'app_ui_kit',
            width: 55,
            repeat: false,
          ),
          title?.text.titleLarge(context).make(),
          content?.text.colorDark(context).make(),
          if (child != null) child!,
          if (onConfirm != null)
            AppButton(
              label: context.dialogConfigData.confirmLabel,
              onPressed: () => Navigator.of(context).pop(),
            ),
        ].withDivider(Gaps.vGap16),
      ).py8(),
    );
  }
}
