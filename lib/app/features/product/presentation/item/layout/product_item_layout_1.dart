import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/product/domain/entity/product_entity.dart';
import 'package:ez_store/app/features/product/presentation/item/layout/product_item_layout.dart';
import 'package:ez_store/app/features/product/presentation/item/product_item_args.dart';
import 'package:ez_store/app/features/product/presentation/widget/product_price_with_type.dart';

class ProductItemLayout1 extends StatelessWidget {
  const ProductItemLayout1({
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
        width: ProductItemLayoutType.layout1.size.width,
        height: ProductItemLayoutType.layout1.size.height,
        decoration: AppDecor.grayBorder(
          context,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppImg(
              product.img,
            ).aspectRatio(1),
            product.title?.textAuto.titleMedium(context).ellipsis.maxLines(2).make().pb4().minHeight(22),
            product.description?.text.caption(context).maxLines(1).ellipsis.make(),
            const Spacer(),
            ProductPriceWithType(
              price: product.price,
              type: product.type,
            ),
            Gaps.vGap2,
            AppListedPrice(
              price: product.listedPrice,
            ),
            Gaps.vGap6,
            AppButton(
              label: LocaleKeys.product_Buy.tr(),
              onPressed: onAddToCart ?? () {},
            ),
          ].filterNotNull(),
        ).p12(),
      ),
    );
  }
}
