import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/distributor/presentation/item/distributor_item.dart';
import 'package:mulstore/app/features/distributor/presentation/item/layout/distributor_item_layout.dart';
import 'package:mulstore/app/features/distributor/presentation/rating/distributor_rating.dart';
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
import 'package:mulstore/app/features/product/self.dart';

class ProductDetailBody extends StatelessWidget {
  const ProductDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    final imgList = List.generate(15, (index) => index)
        .map(
          (e) =>
              'https://product.hstatic.net/200000311493/product/set_goi_xa_gung_trang_68383b0f8acb45c498206705071e6d2c.jpg',
        )
        .toList();
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: BlocBuilder<ProductDetailCubit, ProductDetailState>(
            builder: (context, state) {
              final item = state.item;
              return Column(
                children: [
                  ProductDetailPhotoView(
                    imgList: imgList,
                  ),
                  ...[
                    const ProductTitleHeader(),
                    ProductDetailVariantList.demo().pyDefault(),
                    DistributorItem(
                      layoutType: DistributorItemLayoutType.layoutSimpleInfo1,
                    ),
                    DistributorRatingSimple(),
                    ProductHeightLight(),
                    ProductDetailAttribute().pDefault(),
                    ProductDetailDescription().pDefault(),
                    ProductDetailNote().pDefault(),
                    SectionContainer(
                      title: LocaleKeys.product_SameDistributor.tr(),
                      child: ProductGridHoz.demo(),
                    ).pyDefault(),
                    SectionTitle(
                      title: LocaleKeys.product_SameDistributor.tr(),
                      padding: Dimens.edge,
                    ),
                  ].withDivider(AppDivider()),
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
