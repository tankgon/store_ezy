import 'package:ez_store/all_file/all_file.dart';
import 'package:flutter/cupertino.dart';

class BtnSearchWithClear extends StatelessWidget {
  const BtnSearchWithClear({
    Key? key,
    required this.showClearBtn,
    required this.controller,
    required this.searchPressed,
    this.onClear,
  }) : super(key: key);

  final bool showClearBtn;
  final TextEditingController controller;
  final Function(BuildContext, String) searchPressed;
  final VoidCallback? onClear;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (showClearBtn)
          BtnInputClear(onPress: () {
            controller.clear();
            onClear?.call();
          }),
        if (showClearBtn) Gaps.vLine,
        Btn(
          padding: Dimens.edge_x_XS2,
          btnType: BtnType.TEXT,
          leading: const Icon(CupertinoIcons.search),
          label: 'find'.tr,
          onPressed: () {
            searchPressed(context, controller.text);
            AppUtils.dismissKeyboard(context);
          },
        ),
      ],
    );
  }
}
