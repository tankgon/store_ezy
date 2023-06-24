import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/self.dart';

class ProductVariantItemTileLayout1 extends StatelessWidget {
  const ProductVariantItemTileLayout1({super.key, required this.item, this.args});

  final ProductVariantEntity? item;
  final ProductVariantItemArgs? args;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: args?.isSelected ?? false
          ? BoxDecoration(
              color: context.themeColor.primaryLighter,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: context.theme.primaryColor),
            )
          : BoxDecoration(
              color: context.theme.dividerColor,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: context.theme.dividerColor),
            ),
      height: ProductVariantItemLayoutType.layoutTile1.size.height,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppImg(
            item?.img?.src,
          ).aspectRatio(1).cornerRadius(4),
          item?.title?.text
              .bodySmall(context)
              .maxLines(1)
              .color(
                args?.isSelected ?? false ? context.theme.primaryColor : context.textTheme.bodyMedium?.color,
              )
              .ellipsis
              .make()
              .pr2(),
        ].withDivider(Gaps.hGap8),
      ).p8(),
    );
  }
}
