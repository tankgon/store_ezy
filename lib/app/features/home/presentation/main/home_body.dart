import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/distributor/presentation/list/distributor_grid_hoz.dart';
import 'package:ez_store/app/features/distributor/presentation/list/distributor_grid_ver.dart';
import 'package:ez_store/app/features/home/presentation/feature_gird/home_feature_gird_page.dart';
import 'package:ez_store/app/features/product/data/model/product_base_model.dart';
import 'package:ez_store/app/features/product/presentation/list/product_grid_hoz.dart';
import 'package:ez_store/app/features/product/presentation/list/product_list_hoz.dart';
import 'package:ez_store/app/features/search/presentation/widget/search_bar.dart';

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
                        (e) => 'https://i.pinimg.com/236x/42/b5/30/42b53045eea95293ddf65fa599f75d0b--hamster-twitter.jpg',
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
