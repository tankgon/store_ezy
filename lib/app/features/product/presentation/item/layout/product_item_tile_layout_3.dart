import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/product/presentation/item/layout/product_item_layout.dart';
import 'package:ez_store/app/features/product/presentation/item/product_item_args.dart';
import 'package:ez_store/app/features/product/presentation/widget/product_discount.dart';
import 'package:ez_store/app/features/product/presentation/widget/product_price_with_type.dart';
import 'package:flutter/cupertino.dart';

class ProductItemTileLayout3 extends StatelessWidget {
  const ProductItemTileLayout3({
    super.key,
    this.img,
    required this.title,
    this.price,
    this.type,
    this.onAddToCart,
    this.onPressed,
    this.args = const ProductItemArgs(),
  });

  const ProductItemTileLayout3.demo({
    super.key,
    this.img = 'https://product.hstatic.net/200000311493/product/set_goi_xa_gung_trang_68383b0f8acb45c498206705071e6d2c.jpg',
    this.title = 'Dầu gội dưỡng thể',
    this.price = '100000',
    this.type = 'chai',
    this.onAddToCart,
    this.onPressed,
    this.args = const ProductItemArgs(),
  });

  final dynamic img;
  final String? title;
  final String? price;
  final String? type;
  final VoidCallback? onAddToCart;
  final VoidCallback? onPressed;

  final ProductItemArgs args;

  @override
  Widget build(BuildContext context) {
    return CardCupertinoEffect(
      onPressed: onPressed,
      child: SizedBox(
        height: ProductItemLayoutType.layoutTile3.size.height,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: context.themeColor.greyLighter,
                ),
                borderRadius: Dimens.rad_border_circular_XS2,
              ),
              clipBehavior: Clip.hardEdge,
              child: AppImg(
                img,
              ),
            ).aspectRatio(1),
            Gaps.hGap12,
            _buildContent(context).py8().expand(),
          ],
        ),
      ),
    );
  }

  Column _buildContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title?.textAuto.titleMedium(context).medium.maxLines(2).ellipsis.make().pb2().minHeight(22),
        const Spacer(),
        Row(
          children: [
            ProductPriceWithType(
              price: price,
              priceStyle: context.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: context.textS,
              ),
              type: type,
              typeStyle: context.bodySmall?.copyWith(
                color: context.themeColor.grey,
              ),
            ).expand(),
            args.action,
          ].withDivider(Gaps.hGap8),
        ),
      ].filterNotNull(),
    );
  }
}
