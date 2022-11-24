import 'package:ez_store/all_file/all_file.dart';

class BtnSeeAll extends StatelessWidget {
  const BtnSeeAll({super.key, this.onPressed, this.padding});

  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Btn(
      btnType: BtnType.TEXT,
      label: 'seeAll'.tr,
      padding: padding,
      onPressed: onPressed,
    );
  }
}
