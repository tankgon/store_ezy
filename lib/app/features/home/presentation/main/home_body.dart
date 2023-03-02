import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/home/presentation/feature_gird/home_feature_gird_page.dart';
import 'package:ez_store/app/features/home/presentation/main/cubit/home_cubit.dart';
import 'package:ez_store/app/features/search/presentation/widget/search_bar.dart';

class HomeBody extends StatelessWidget {

  const HomeBody({super.key}) ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SearchBar().pDefault(),
        Gaps.vGap16,
        SizedBox(
          height: 208,
          child: HomeFeatureGird(
            padding: Dimens.edge_x_XS,
          ),
        )
      ],
    );
  }
}
