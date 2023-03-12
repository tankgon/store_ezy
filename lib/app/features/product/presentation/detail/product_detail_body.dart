import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/distributor/presentation/item/distributor_item.dart';
import 'package:ez_store/app/features/distributor/presentation/rating/distributor_rating.dart';
import 'package:ez_store/app/features/product/presentation/detail/cubit/product_detail_cubit.dart';
import 'package:ez_store/app/features/product/presentation/detail/widget/core_feature.dart';
import 'package:ez_store/app/features/product/presentation/detail/widget/detail_attribute.dart';
import 'package:ez_store/app/features/product/presentation/detail/widget/detail_description.dart';
import 'package:ez_store/app/features/product/presentation/detail/widget/detail_note.dart';
import 'package:ez_store/app/features/product/presentation/detail/widget/title_price_section.dart';
import 'package:ez_store/app/features/product/presentation/list/product_grid_hoz.dart';
import 'package:ez_store/app/features/product/presentation/list/product_grid_ver.dart';
import 'package:ez_store/app/features/product/presentation/widget/product_photo_view.dart';

class ProductDetailBody extends StatelessWidget {
  const ProductDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    final imgList = List.generate(15, (index) => index)
        .map(
          (e) => 'https://product.hstatic.net/200000311493/product/set_goi_xa_gung_trang_68383b0f8acb45c498206705071e6d2c.jpg',
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
                    DistributorItem(),
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
