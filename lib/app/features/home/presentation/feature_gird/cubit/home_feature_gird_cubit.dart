import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/domain/entity/category_entity.dart';
import 'package:mulstore/app/features/product/domain/repo/product_category_repo.dart';
import 'package:mulstore/app/features/product/domain/repo/product_repo.dart';

part 'home_feature_gird_state.dart';

class HomeFeatureGirdCubit extends Cubit<HomeFeatureGirdState> {
  HomeFeatureGirdCubit({dynamic? item}) : super(HomeFeatureGirdState(item: item));

  Future<List<ProductCategoryEntity?>> fetchList(int offset, int limit) {
    return getIt<ProductCategoryRepo>().getCategoryList(
      offset: offset,
      limit: limit,
    );
  }
}
