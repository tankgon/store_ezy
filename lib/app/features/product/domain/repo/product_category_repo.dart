import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/domain/entity/category_entity.dart';

abstract class ProductCategoryRepo {
  Future<List<ProductCategoryEntity>> getCategoryList({
    int? limit,
    int? offset,
  });
}
