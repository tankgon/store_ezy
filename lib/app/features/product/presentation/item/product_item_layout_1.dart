import 'package:ez_store/all_file/all_file.dart';

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
  });

  const ProductItemLayout1.demo({
    super.key,
    this.img = 'https://product.hstatic.net/200000311493/product/set_goi_xa_gung_trang_68383b0f8acb45c498206705071e6d2c.jpg',
    this.title = 'Dầu gội dưỡng thể đẹp da cho tóc',
    this.description = 'Mô tả sản phẩm tối đa hai dòng với số lượng ký tự tối đa 100 ký tự',
    this.price = '100000',
    this.type = 'chai',
    this.listedPrice = '200000',
    this.onAddToCart,
  });

  final dynamic img;
  final String? title;
  final String? description;
  final String? price;
  final String? type;
  final String? listedPrice;
  final VoidCallback? onAddToCart;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 167,
      height: 315,
      decoration: AppDecor.grayBorder(context),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppImg(
            img,
          ).aspectRatio(1),
          title?.textAuto.semiBold.ellipsis.maxLines(2).make().pb4().minHeight(22),
          description?.text.textS.maxLines(2).make(),
          const Spacer(),
          Row(
            children: [
              AppProductPrice(price: price),
              if (type.isNotNullOrEmpty()) '/${type ?? ''}'.textAuto.textS.make(),
            ].filterNotNull(),
          ),
          AppListedPrice(
            price: listedPrice,
          ),
          AppButton(
            label: LocaleKeys.product_Buy.tr(),
            onPressed: onAddToCart ?? () {},
          ),
        ].filterNotNull(),
      ).p12(),
    );
  }
}
