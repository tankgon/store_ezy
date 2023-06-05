import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/data/ms/api/ms_product_category_api.dart';
import 'package:mulstore/app/features/product/data/ms/model/ms_product_category_model.dart';
import 'package:mulstore/app/features/product/domain/entity/category_entity.dart';
import 'package:mulstore/app/features/product/domain/repo/product_category_repo.dart';

class MsProductCategoryRepo extends ProductCategoryRepo {
  MsProductCategoryRepo({MsProductCategoryApi? productApi}) {
    _api = productApi ?? getIt();
  }

  late final MsProductCategoryApi _api;

  @override
  Future<List<ProductCategoryEntity>> getCategoryList({
    int? limit,
    int? offset,
  }) {
    return _api
        .getCategoryList(
          limit: limit,
          offset: offset,
        )
        .then(
          (value) => value?.result.mapAsList((item) => item.toEntity()) ?? [],
        );
  }
}
