import 'package:ez_store/all_file/all_file.dart';

class BtnMoreText extends StatelessWidget {
  const BtnMoreText({Key? key, this.onPressed, required this.isMore, this.padding}) : super(key: key);

  final VoidCallback? onPressed;
  final bool isMore;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Btn(
      label: isMore ? 'viewLess'.tr: 'viewMore'.tr,
      btnType: BtnType.TEXT,
      padding: padding ?? Dimens.edge_zero,
      onPressed: onPressed,
    );
  }
}
