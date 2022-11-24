import 'package:ez_store/all_file/all_file.dart';

class BtnCloseCircleWhite extends StatelessWidget {
  const BtnCloseCircleWhite({
    Key? key,
    this.size = Dimens.ic,
    this.backgroundColor,
    this.iconColor,
  }) : super(key: key);

  factory BtnCloseCircleWhite.white(BuildContext context) =>
      BtnCloseCircleWhite(
        backgroundColor: context.themeColor.grayOpacity5,
        iconColor: context.themeText.text.color,
      );

  final double size;
  final Color? backgroundColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: BtnCircleIcon(
        Icons.close,
        backgroundColor: backgroundColor ?? context.themeColor.gray5,
        iconColor: iconColor ?? context.themeText.text.color,
        padding: Dimens.edge_XS3,
        onPressed: () {
          context.router.pop();
        },
      ),
    );
  }
}
