import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/presentation/item/product_item.dart';
import 'package:mulstore/app/features/product/self.dart';
import 'package:mulstore/app/features/product/self.dart';
import 'package:mulstore/app/widgets/app_item_counter/app_item_counter.dart';
import 'package:mulstore/app/widgets/app_item_counter/app_item_counter_args.dart';

class SelectProductVariantBody extends StatelessWidget {
  const SelectProductVariantBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        ProductItem(
          item: ProductEntity.demo(),
          layoutType: ProductItemLayoutType.layoutTile2,
        ).pDefault(),
        LimitedBox(
          maxHeight: MediaQuery.of(context).size.height * 0.45,
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ProductVariantSelectGroup();
            },
            separatorBuilder: (context, index) => Gaps.vGap8,
            itemCount: 2,
          ),
        ),
        const AppDivider.thin(),
        Row(
          children: [
            LocaleKeys.product_Quantity.tr().text.make().expand(),
            AppCartItemCounter(
              submitCallBack: AppCartItemCounterSubmitCallBack(
                onValueSubmit: (value) {},
                onDeleteItem: () {},
              ),
            ),
          ],
        ).pDefault(),
      ],
    );
  }
}

class ProductVariantSelectGroup extends StatelessWidget {
  const ProductVariantSelectGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      title: 'Phân loại',
      crossAxisAlignment: CrossAxisAlignment.stretch,
      child: Wrap(
        spacing: 8,
        runSpacing: 12,
        children: List.generate(4, (index) => ProductVariantEntity.demo())
            .mapAsListIndexed(
          (item, index) => ProductVariantItem(
            item: item,
            layoutType: ProductVariantItemLayoutType.layoutTile1,
            args: ProductVariantItemArgs(
              isSelected: index == 0,
            ),
          ),
        ),
      ).pxDefault(),
    );
  }
}
