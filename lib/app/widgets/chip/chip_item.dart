import 'package:ez_store/all_file/all_file.dart';

class ChipItem extends StatelessWidget {
  const ChipItem({
    super.key,
    this.child,
    required this.isSelected,
    this.onPressed,
  });

  final dynamic child;
  final bool isSelected;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    Widget finalChild;
    final local = child;
    if (local is String) {
      finalChild = local.text.medium
          .color(
            isSelected ? context.theme.primaryColor : context.themeColor.text,
          )
          .make();
    } else if (local is Widget) {
      finalChild = local;
    } else {
      finalChild = Gaps.empty;
    }

    return CardCupertinoEffect(
      onPressed: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.rad_max),
          color: isSelected ? context.theme.primaryColor : context.themeColor.divider,
        ),
        alignment: Alignment.center,
        child: Padding(
          padding: Dimens.edge_btn_wide_XS,
          child: finalChild,
        ),
      ),
    );
  }
}
