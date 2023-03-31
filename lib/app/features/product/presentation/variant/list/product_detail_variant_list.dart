import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/product/presentation/variant/select_variant/select_product_variant.dart';
import 'package:ez_store/app/features/product/self.dart';

class ProductDetailVariantList extends StatelessWidget {
  const ProductDetailVariantList({
    super.key,
    this.rowItemCount = 6,
    this.spacing = 8,
    required this.listItem,
  });

  static ProductDetailVariantList demo() {
    return ProductDetailVariantList(
      listItem: List.generate(10, (index) => ProductVariantEntity.demo()),
    );
  }

  final int rowItemCount;
  final double spacing;
  final List<ProductVariantEntity> listItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BottomSheetUtils.showMaterial(
          context: context,
          child: SelectProductVariant(),
        );
      },
      child: SectionContainer(
        title: LocaleKeys.product_ProductClassification.tr(),
        trailing: Row(
          children: [
            '12 loại'.text.caption(context).make(),
            Gaps.hGap8,
            const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 12,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: LayoutBuilder(
            builder: (_, constrains) {
              final itemHeight = (constrains.maxWidth - spacing * (rowItemCount - 1)) / rowItemCount;
              return SizedBox(
                height: itemHeight,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => Gaps.hGap8,
                  itemCount: rowItemCount,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    if (index == rowItemCount - 1) {
                      return _LastItemWrapper(
                        itemLeftCount: listItem.length - rowItemCount,
                        child: ProductVariantItem(
                          item: ProductVariantEntity.demo(),
                        ),
                      ).cornerRadius(Dimens.rad_XS);
                    }

                    return ProductVariantItem(
                      item: ProductVariantEntity.demo(),
                    ).cornerRadius(Dimens.rad_XS);
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _LastItemWrapper extends StatelessWidget {
  const _LastItemWrapper({
    super.key,
    required this.itemLeftCount,
    required this.child,
  });

  final int itemLeftCount;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (itemLeftCount == 0) {
      return child;
    }

    // if last item then create a mask layer above the last item with a number center
    return Stack(
      children: [
        ProductVariantItem(
          item: ProductVariantEntity.demo(),
        ),
        Positioned.fill(
          child: Container(
            color: Colors.black.withOpacity(0.5),
            child: Center(
              child: Text(
                '+$itemLeftCount',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
