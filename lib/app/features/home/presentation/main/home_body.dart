import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/home/presentation/feature_gird/home_feature_gird_page.dart';
import 'package:ez_store/app/features/home/presentation/main/cubit/home_cubit.dart';
import 'package:ez_store/app/features/product/data/model/product_base_model.dart';
import 'package:ez_store/app/features/product/presentation/list/product_list.dart';
import 'package:ez_store/app/features/search/presentation/widget/search_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SearchBar().pDefault(),
        Gaps.vGap16,
        HomeFeatureGird(
          padding: Dimens.edge_x_XS,
        ),
        SizedBox(
          height: 315,
          child: ProductListHoz(
            fetchListData: (page, pageSize) {
              return Future.value(List.generate(5, (index) => index).map((e) => ProductModel()).toList());
            },
          ),
        ),
      ],
    );
  }
}
