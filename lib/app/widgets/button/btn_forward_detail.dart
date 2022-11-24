import 'package:ez_store/all_file/all_file.dart';

class BtnForwardDetail extends StatelessWidget {
  const BtnForwardDetail({
    super.key,
    this.onPressed,
    this.padding,
  });

  final VoidCallback? onPressed;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Btn(
      btnType: BtnType.TEXT,
      onPressed: onPressed,
      padding: padding,
      child: Icon(
        Icons.arrow_forward_ios,
        color: context.themeColor.actionColorGray,
        size: 18,
      ),
    );
  }
}
