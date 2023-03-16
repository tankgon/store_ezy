import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/product/presentation/item/layout/product_item_layout.dart';
import 'package:ez_store/app/features/product/presentation/item/product_item_args.dart';
import 'package:ez_store/app/features/product/presentation/widget/product_price_with_type.dart';

class ProductItemLayout1 extends StatelessWidget {
  const ProductItemLayout1({
    super.key,
    this.img,
    required this.title,
    this.description,
    this.price,
    this.type,
    this.listedPrice,
    this.onAddToCart,
    this.onPressed,
    this.args = const ProductItemArgs(),
  });

  const ProductItemLayout1.demo({
    super.key,
    this.img = 'https://product.hstatic.net/200000311493/product/set_goi_xa_gung_trang_68383b0f8acb45c498206705071e6d2c.jpg',
    this.title = 'Dầu gội dưỡng thể',
    this.description = 'Mô tả sản phẩm tối đa hai dòng với số lượng ký tự tối đa 100 ký tự',
    this.price = '100000',
    this.type = 'chai',
    this.listedPrice = '200000',
    this.onAddToCart,
    this.onPressed,
    this.args = const ProductItemArgs(),
  });

  final dynamic img;
  final String? title;
  final String? description;
  final String? price;
  final String? type;
  final String? listedPrice;
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
              img,
            ).aspectRatio(1),
            title?.textAuto.titleMedium(context).ellipsis.maxLines(2).make().pb4().minHeight(22),
            description?.text.caption(context).maxLines(2).ellipsis.make(),
            const Spacer(),
            ProductPriceWithType(
              price: price,
              type: type,
            ),
            Gaps.vGap2,
            AppListedPrice(
              price: listedPrice,
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
