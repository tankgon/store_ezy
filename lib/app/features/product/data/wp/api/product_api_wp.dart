import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/data/wp/model/product_model_wp.dart';

part 'product_api_wp.g.dart';

@RestApi()
abstract class ProductApiWP {
  factory ProductApiWP(Dio dio) = _ProductApiWP;

  @GET('/wp-json/wc/v3/products/{id}')
  Future<ProductWP?> getProductDetail(@Path() String id);
}
