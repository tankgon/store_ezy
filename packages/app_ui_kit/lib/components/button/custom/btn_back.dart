import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/button/btn.dart';
import 'package:app_ui_kit/components/button/primary/app_button.dart';
import 'package:flutter/cupertino.dart';

class BtnBack extends StatelessWidget {
  final VoidCallback? onPress;
  final double size;
  final Color? iconColor;
  final Color? backgroundColor;
  final bool? checkCanPop;
  final bool isCupertino;

  static bool isShowBtnBack(BuildContext context) => (ModalRoute.of(context)?.canPop ?? false) == true;

  const BtnBack({Key? key, this.onPress, this.size = 25, this.iconColor, this.backgroundColor, this.checkCanPop = true, this.isCupertino = true}) : super(key: key);

  static BtnBack transparent(BuildContext context) {
    return BtnBack(
      iconColor: Theme.of(context).canvasColor,
      backgroundColor: Colors.transparent,
    );
  }

  static BtnBack forHeader(BuildContext context, bool isTransparent) {
    final iconColor = isTransparent ? Colors.white : Theme.of(context).primaryColor;
    final iconBackground = isTransparent ? Colors.grey[600]!.withOpacity(0.3) : Colors.transparent;

    return BtnBack(
      iconColor: iconColor,
      backgroundColor: iconBackground,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (checkCanPop == true) {
      if (!isShowBtnBack(context)) {
        return const SizedBox.shrink();
      }
    }

    if (isCupertino) {
      return Btn(
        btnType: BtnType.TEXT,
        padding: Dimens.edge_S,
        onPressed: onPress ?? () => Navigator.of(context).pop(),
        child: Icon(
          CupertinoIcons.back,
          size: size,
        ),
      );
    }

    final iconColorUse = iconColor ?? Theme.of(context).iconTheme.color;
    final backgroundColorUse = backgroundColor ?? Colors.transparent;

    return AppButton(
      onPressed: onPress ?? () => Navigator.of(context).pop(),
      child: Icon(
        CupertinoIcons.back,
        size: size,
        color: iconColorUse,
      ),
    );
  }
}
