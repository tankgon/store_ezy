import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/presentation/variant/select_variant/select_product_variant.dart';
import 'package:mulstore/app/features/product/self.dart';

class ProductDetailVariantList extends StatelessWidget {
  const ProductDetailVariantList({
    super.key,
    this.rowItemCount = 6,
    this.spacing = 8,
    required this.listItem,
    required this.product,
  });

  static ProductDetailVariantList demo() {
    return ProductDetailVariantList(
      listItem: List.generate(10, (index) => ProductVariantEntity.demo()),
      product: ProductEntity.demo(),
    );
  }

  final int rowItemCount;
  final double spacing;
  final List<ProductVariantEntity> listItem;
  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BottomSheetUtils.showMaterial(
          context: context,
          child: SelectProductVariant(
            product: product,
            variantList: listItem,
          ),
        );
      },
      child: SectionContainer(
        title: LocaleKeys.product_ProductClassification.tr(),
        trailing: Row(
          children: [
            '{} loại'.tr(args: [listItem.length.toString()]).text.caption(context).make(),
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
              final listCount = listItem.length > rowItemCount ? rowItemCount : listItem.length;
              return SizedBox(
                height: itemHeight,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => Gaps.hGap8,
                  itemCount: listCount,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    if (listItem.length > rowItemCount && index == listCount - 1) {
                      return _LastItemWrapper(
                        itemLeftCount: listItem.length - rowItemCount,
                        child: ProductVariantItem(
                          item: listItem.getOrNull(index),
                        ),
                      ).cornerRadius(Dimens.rad_XS);
                    }

                    return ProductVariantItem(
                      item: listItem.getOrNull(index) ?? ProductVariantEntity.demo(),
                    ).cornerRadius(Dimens.rad_XS);
                  },
                ).objectCenterLeft(),
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
