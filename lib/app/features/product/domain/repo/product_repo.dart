import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/product/domain/entity/product_entity.dart';

abstract class ProductRepo {
  Future<List<ProductEntity>> getProductList({int? limit, int? offset});

  Future<ProductEntity> getProductDetail(String id);

  Future<List<ProductEntity>> getProductListByCategory(String id, {int? limit, int? offset});

  Future<List<ProductEntity>> getProductListByBrand(String id, {int? limit, int? offset});
}
