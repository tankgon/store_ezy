import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/product/presentation/widget/product_discount.dart';
import 'package:ez_store/app/features/product/presentation/widget/product_price_with_type.dart';

class ProductItemTileLayout1 extends StatelessWidget {
  const ProductItemTileLayout1({
    super.key,
    this.img,
    required this.title,
    this.description,
    this.price,
    this.type,
    this.listedPrice,
    this.onAddToCart,
    this.onPressed,
  });

  const ProductItemTileLayout1.demo({
    super.key,
    this.img = 'https://product.hstatic.net/200000311493/product/set_goi_xa_gung_trang_68383b0f8acb45c498206705071e6d2c.jpg',
    this.title = 'Dầu gội dưỡng thể',
    this.description = 'Mô tả sản phẩm tối đa hai dòng với số lượng ký tự tối đa 100 ký tự',
    this.price = '100000',
    this.type = 'chai',
    this.listedPrice = '200000',
    this.onAddToCart,
    this.onPressed,
  });

  static const double height = 120;
  static const double width = 310;

  final dynamic img;
  final String? title;
  final String? description;
  final String? price;
  final String? type;
  final String? listedPrice;
  final VoidCallback? onAddToCart;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return CardCupertinoEffect(
      onPressed: onPressed,
      child: Container(
        width: width,
        height: height,
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
                  img,
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
            title?.textAuto.titleMedium(context).ellipsis.maxLines(2).make().pb4().minHeight(22),
            description?.text.caption(context).maxLines(2).ellipsis.make(),
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
                      price: price,
                      type: type,
                    ),
                    AppListedPrice(
                      price: listedPrice,
                    ),
                  ],
                ).expand(),
                AppButton(
                  style: AppButtonTheme.primaryStyle(
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
