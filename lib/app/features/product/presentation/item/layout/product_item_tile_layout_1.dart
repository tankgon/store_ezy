import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/product/presentation/item/layout/product_item_layout.dart';
import 'package:ez_store/app/features/product/presentation/item/product_item_args.dart';
import 'package:ez_store/app/features/product/presentation/widget/product_discount.dart';
import 'package:ez_store/app/features/product/presentation/widget/product_price_with_type.dart';
import 'package:ez_store/app/features/product/self.dart';

class ProductItemTileLayout1 extends StatelessWidget {
  const ProductItemTileLayout1({
    super.key,
    required this.product,
    this.onAddToCart,
    this.onPressed,
    this.args = const ProductItemArgs(),
  });

  final ProductEntity product;
  final VoidCallback? onAddToCart;
  final VoidCallback? onPressed;

  final ProductItemArgs args;

  @override
  Widget build(BuildContext context) {
    return CardCupertinoEffect(
      onPressed: onPressed,
      child: Container(
        width: ProductItemLayoutType.layoutTile1.size.width,
        height: ProductItemLayoutType.layoutTile1.size.height,
        decoration: AppDecor.grayBorder(
          context,
        ),
        clipBehavior: Clip.hardEdge,
        child: Stack(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppImg(
                  product.img,
                ).aspectRatio(1),
                Gaps.hGap12,
                _buildContent(context).expand(),
              ],
            ).p12(),
            ProductDiscount1(
              percent: '99',
            ),
          ],
        ),
      ),
    );
  }

  Column _buildContent(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            product.title?.textAuto.titleMedium(context).ellipsis.maxLines(2).make().pb4().minHeight(22),
            product.description?.text.caption(context).maxLines(2).ellipsis.make(),
            const Spacer(),
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ProductPriceWithType(
                      price: product.price,
                      type: product.type,
                    ),
                    AppListedPrice(
                      price: product.listedPrice,
                    ),
                  ],
                ).expand(),
                AppButton(
                  style: AppButtonTheme.primary(
                    context,
                  ).copyWith(
                    minimumSize: const MaterialStatePropertyAll(Size.zero),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: const MaterialStatePropertyAll(Dimens.edge_XS3)
                  ),
                  child: Icon(Icons.add_rounded),
                  onPressed: onAddToCart ?? () {},
                ),
              ],
            ),
          ].filterNotNull(),
        );
  }
}
