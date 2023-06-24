import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/distributor/presentation/list/distributor_grid_ver.dart';
import 'package:mulstore/app/features/home/presentation/feature_gird/home_feature_gird_page.dart';
import 'package:mulstore/app/features/product/domain/repo/product_repo.dart';
import 'package:mulstore/app/features/product/presentation/list/product_list_hoz.dart';
import 'package:mulstore/app/features/product/self.dart';
import 'package:mulstore/app/features/search/presentation/widget/home_search_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScrollBody.withSpacing(
      child: Column(
        children: [
          const HomeSearchBar().pxDefault(),
          Gaps.vGap16,
          Column(
            children: [
              const HomeFeatureGird(
                padding: Dimens.edge_x_XS,
              ),
              SectionContainer(
                title: '${'Sản phẩm HOT'.tr()} 🔥🔥🔥',
                seeAll: () {
                  context.pushRoute(
                    ProductSearchRoute(
                      filterData: const ProductFilterData(
                        type: ProductListType.hot,
                        showType: ProductListShowType.homePage,
                      ),
                    ),
                  );
                },
                child: ProductListHoz(
                  fetchListData: (offset, limit) => getIt<ProductRepo>().getProductList(
                    offset: offset,
                    limit: limit,
                    type: ProductListType.hot,
                    showType: ProductListShowType.homePage,
                  ),
                ),
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
                  title: '${'Sản phẩm bán chạy'.tr()} 🌟🌟🌟',
                  child: ProductListHoz(
                    fetchListData: (offset, limit) => getIt<ProductRepo>().getProductList(
                      offset: offset,
                      limit: limit,
                      type: ProductListType.bestSeller,
                      showType: ProductListShowType.homePage,
                    ),
                  ),
                  seeAll: () {
                    context.pushRoute(
                      ProductSearchRoute(
                        filterData: const ProductFilterData(
                          type: ProductListType.bestSeller,
                          showType: ProductListShowType.homePage,
                        ),
                      ),
                    );
                  }),
              SectionContainer(
                  title: 'Giá tốt hôm nay'.tr(),
                  child: ProductListHoz(
                    fetchListData: (offset, limit) => getIt<ProductRepo>().getProductList(
                      offset: offset,
                      limit: limit,
                      type: ProductListType.goodPrice,
                      showType: ProductListShowType.homePage,
                    ),
                  ),
                  seeAll: () {
                    context.pushRoute(
                      ProductSearchRoute(
                        filterData: const ProductFilterData(
                          type: ProductListType.goodPrice,
                          showType: ProductListShowType.homePage,
                        ),
                      ),
                    );
                  }),
              SectionContainer(
                  title: 'Sản phẩm mới'.tr(),
                  child: ProductListHoz(
                    fetchListData: (offset, limit) => getIt<ProductRepo>().getProductList(
                      offset: offset,
                      limit: limit,
                      type: ProductListType.newest,
                      showType: ProductListShowType.homePage,
                    ),
                  ),
                  seeAll: () {
                    context.pushRoute(
                      ProductSearchRoute(
                        filterData: const ProductFilterData(
                          type: ProductListType.newest,
                          showType: ProductListShowType.homePage,
                        ),
                      ),
                    );
                  }),
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
