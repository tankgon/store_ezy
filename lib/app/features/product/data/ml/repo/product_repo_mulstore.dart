import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/data/ml/api/product_api_ml.dart';
import 'package:mulstore/app/features/product/data/ml/model/product_model_ml.dart';
import 'package:mulstore/app/features/product/domain/entity/product_entity.dart';
import 'package:mulstore/app/features/product/domain/repo/product_repo.dart';

class ProductRepoMulStore extends ProductRepo {
  ProductRepoMulStore({ProductApiML? productApiWP}) {
    _api = productApiWP ?? getIt<ProductApiML>();
  }

  late final ProductApiML _api;

  @override
  Future<List<ProductEntity>> getProductList({
    int? limit,
    int? offset,
    ProductListType? type,
  }) async {
    switch (type) {
      case ProductListType.hot:
        return _api.getListHot().then((value) => value?.result?.map((e) => e.toEntity()).toList() ?? []);
      case ProductListType.newest:
        return _api.getListHot().then((value) => value?.result?.map((e) => e.toEntity()).toList() ?? []);
      case ProductListType.bestSeller:
        return _api.getListHot().then((value) => value?.result?.map((e) => e.toEntity()).toList() ?? []);
      case ProductListType.goodPrice:
        return _api.getListHot().then((value) => value?.result?.map((e) => e.toEntity()).toList() ?? []);
      case null:
        return [];
    }
  }

  @override
  Future<ProductEntity> getProductDetail(String id) async {
    return ProductEntity(id: id);
  }

  @override
  Future<List<ProductEntity>> getProductListByCategory(String id, {int? limit, int? offset}) async {
    return [];
  }

  @override
  Future<List<ProductEntity>> getProductListByBrand(String id, {int? limit, int? offset}) async {
    return [];
  }
}
