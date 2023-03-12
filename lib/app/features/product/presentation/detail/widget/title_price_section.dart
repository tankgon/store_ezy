import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/product/presentation/widget/product_price_with_type.dart';

class ProductTitleHeader extends StatelessWidget {
  const ProductTitleHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          'Tên sản phẩm'.text.titleLarge(context).maxLines(3).ellipsis.make(),
          Gaps.vGap8,
          'Gói xà găng trắng'.text.maxLines(2).ellipsis.make(),
          Row(
            children: [
              ProductPriceWithType(
                price: '5000',
                priceStyle: context.textTheme.titleLarge,
                type: 'chai',
              ).expand(),
              AppButtonIcon(
                icon: PhosphorIcons.heart,
                onPressed: () {},
              ),
              AppButtonIcon(
                icon: PhosphorIcons.share,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

