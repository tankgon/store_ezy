import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/distributor/presentation/list/distributor_grid_ver.dart';
import 'package:mulstore/app/features/home/presentation/feature_gird/home_feature_gird_page.dart';
import 'package:mulstore/app/features/product/presentation/list/product_grid_hoz.dart';
import 'package:mulstore/app/features/product/presentation/list/product_list_hoz.dart';
import 'package:mulstore/app/features/search/presentation/widget/search_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScrollBody.withSpacing(
      child: Column(
        children: [
          const SearchBar().pxDefault(),
          Gaps.vGap16,
          Column(
            children: [
              const HomeFeatureGird(
                padding: Dimens.edge_x_XS,
              ),
              SectionContainer(
                title: LocaleKeys.product_PopularProducts.tr(),
                child: ProductListHoz.demo(),
              ),
              SectionContainer(
                title: LocaleKeys.discount_Promotions.tr(),
                child: CarouselLayout1(
                  showIndicator: false,
                  imgList: List.generate(5, (index) => index)
                      .map(
                        (e) => 'https://img.freepik.com/free-vector/sales-banner-template_1176-108.jpg?w=2000',
                  )
                      .toList(),
                ),
              ),
              SectionContainer(
                title: LocaleKeys.product_HotDeals.tr(),
                child: ProductGridHoz.demo(),
              ),
              SectionContainer(
                title: LocaleKeys.product_NewProducts.tr(),
                child: ProductGridHoz.demo(),
              ),
              SectionContainer(
                title: LocaleKeys.distributor_Popular.tr(),
                space: Dimens.pad_L,
                child: DistributorGridVer.demo(
                  shrinkWrap: true,
                  onlyOnePage: true,
                  physics: const NeverScrollableScrollPhysics(),
                ),
              ),
            ].withDivider(const AppDivider().py16()),
          ),
          Gaps.vGap32,
        ],
      ),
    );
  }
}
