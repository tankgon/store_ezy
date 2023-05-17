import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/domain/entity/product_entity.dart';
import 'package:mulstore/app/features/product/domain/repo/product_repo.dart';

class ProductRepoMulStore extends ProductRepo {

  @override
  Future<List<ProductEntity>> getProductList({int? limit, int? offset}) async {
    return [];
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