import 'package:ez_store/all_file/all_file.dart';

class BtnFormClose extends StatelessWidget {
  const BtnFormClose({
    Key? key,
    this.padding,
    this.negative,
    this.negativeLabel,
    this.btnType,
    this.enable = true,
  }) : super(key: key);

  final EdgeInsets? padding;
  final Function()? negative;
  final String? negativeLabel;
  final BtnType? btnType;
  final bool enable;

  @override
  Widget build(BuildContext context) {
    return Btn(
      btnType: btnType,
      padding: padding ?? Dimens.edge_btn_wide,
      onPressed: !enable
          ? null
          : () {
              Navigator.of(context, rootNavigator: true)
                  .pop(DialogReturnMsg.cancel);
              negative?.call();
            },
      label: negativeLabel ?? 'close',
    );
  }
}
