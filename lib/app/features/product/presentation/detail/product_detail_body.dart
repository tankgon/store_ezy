import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/common/presentation/bloc/request_item_cubit.dart';
import 'package:mulstore/app/features/distributor/presentation/item/distributor_item.dart';
import 'package:mulstore/app/features/distributor/presentation/item/layout/distributor_item_layout.dart';
import 'package:mulstore/app/features/distributor/presentation/rating/distributor_rating.dart';
import 'package:mulstore/app/features/product/domain/entity/product_entity.dart';
import 'package:mulstore/app/features/product/presentation/detail/cubit/product_detail_cubit.dart';
import 'package:mulstore/app/features/product/presentation/detail/widget/core_feature.dart';
import 'package:mulstore/app/features/product/presentation/detail/widget/detail_attribute.dart';
import 'package:mulstore/app/features/product/presentation/detail/widget/detail_description.dart';
import 'package:mulstore/app/features/product/presentation/detail/widget/detail_note.dart';
import 'package:mulstore/app/features/product/presentation/detail/widget/title_price_section.dart';
import 'package:mulstore/app/features/product/presentation/list/product_grid_hoz.dart';
import 'package:mulstore/app/features/product/presentation/list/product_grid_ver.dart';
import 'package:mulstore/app/features/product/presentation/variant/list/product_detail_variant_list.dart';
import 'package:mulstore/app/features/product/presentation/widget/product_photo_view.dart';

class ProductDetailBody extends StatelessWidget {
  const ProductDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:
              BlocBuilder<ProductDetailCubit, RequestItemState<ProductEntity>>(
            builder: (context, state) {
              final item = state.item;
              final imgList = item?.imgSrcList ?? [];
              final distributor = item?.distributor;
              return Column(
                children: [
                  ProductDetailPhotoView(
                    imgList: imgList,
                  ),
                  ...[
                    ProductTitleHeader(
                      product: item,
                    ),
                    ProductDetailVariantList(
                      listItem: item?.variations ?? [],
                    ).pyDefault(),
                    DistributorItem(
                      item: distributor,
                      layoutType: DistributorItemLayoutType.layoutSimpleInfo1,
                    ),
                    DistributorRatingSimple(),
                    const ProductHeightLight(),
                    ProductDetailAttribute(
                      item: item,
                    ).pDefault(),
                    ProductDetailDescription(
                      item: item,
                    ).pDefault(),
                    ProductDetailNote(
                      item: item,
                    ).pDefault(),
                    SectionContainer(
                      title: 'Cùng nhà phân phối'.tr(),
                      child: ProductGridHoz.demo(),
                    ).pyDefault(),
                    SectionTitle(
                      title: 'Sản phẩm tương tự'.tr(),
                      seeAll: () {
                        context.pushRoute(ProductSearchRoute());
                      },
                      padding: Dimens.edge,
                    ),
                  ].withDivider(const AppDivider()),
                ],
              );
            },
          ),
        ),
        ProductGridVer.demo(
          isSliver: true,
        )
      ],
    );
  }
}
