import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/data/wp/api/product_api_wp.dart';
import 'package:mulstore/app/features/product/data/wp/model/product_model_wp.dart';
import 'package:mulstore/app/features/product/domain/entity/product_entity.dart';
import 'package:mulstore/app/features/product/domain/repo/product_repo.dart';

class ProductRepoWP extends ProductRepo {
  ProductRepoWP({ProductApiWP? productApiWP}) {
    _productApiWP = productApiWP ?? getIt<ProductApiWP>();
  }

  late final ProductApiWP _productApiWP;

  @override
  Future<List<ProductEntity>> getProductList({
    int? limit,
    int? offset,
    ProductListType? type,
    ProductListShowType? showType,
  }) async {
    return [];
  }

  @override
  Future<ProductEntity?> getProductDetail(String id) async {
    final rs = await _productApiWP.getProductDetail(id);
    return rs?.toEntity();
  }

  @override
  Future<List<ProductEntity>> getProductListByCategory(String id,
      {int? limit, int? offset}) async {
    return [];
  }

  @override
  Future<List<ProductEntity>> getProductListByBrand(String id,
      {int? limit, int? offset}) async {
    return [];
  }
}
