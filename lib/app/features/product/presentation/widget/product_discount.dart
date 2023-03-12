import 'package:ez_store/all_file/all_file.dart';

class ProductDiscount1 extends StatelessWidget {
  const ProductDiscount1({super.key, required this.percent});

  final String percent;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomRight: Radius.circular(Dimens.rad)
      ),
      clipBehavior: Clip.hardEdge,
      child: '-$percent%'
          .text
          .caption(context)
          .medium
          .colorOnPrimary(
            context,
          )
          .make().pSymmetric(h: 8, v: 6)
          .backgroundColor(
            context.themeColor.red,
          ),
    );
  }
}
