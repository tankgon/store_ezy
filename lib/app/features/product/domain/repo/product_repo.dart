import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/domain/entity/product_entity.dart';

// Chim canh cut
// Chim ung

// Class con Chim
abstract class ProductRepo {
  Future<List<ProductEntity>> getProductList({
    int? limit,
    int? offset,
    ProductListType? type,
    ProductListShowType? showType,
  });

  Future<ProductEntity?> getProductDetail({
    required String? id,
  });

  Future<List<ProductEntity>> getProductListByCategory({
    required String? id,
    int? limit,
    int? offset,
  });

  Future<List<ProductEntity>> getProductListSearch({
    int? limit,
    int? offset,
    ProductFilterData? filterData,
  });

  Future<List<ProductAttributeEntity>> getProductAttribute({
    required String? productId,
  }) {
    throw UnimplementedError();
  }

  Future<List<ProductVariantEntity>> getProductVariantList({
    required String? productId,
  }) {
    throw UnimplementedError();
  }
}

enum ProductListType {
  hot,
  newest,
  bestSeller,
  goodPrice,
}

enum ProductListShowType {
  all,
  homePage,
}
