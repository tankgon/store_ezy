import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/data/ml/model/product_model_ml.dart';
import 'package:mulstore/app/features/product/data/wp/model/product_model_wp.dart';

part 'product_api_ml.g.dart';

@RestApi()
abstract class ProductApiML {
  factory ProductApiML(Dio dio) = _ProductApiML;

  @GET('/api/mulstore/product/get-list-hot')
  Future<PagingResultML<ProductML>?> getListHot();

  @GET('/api/mulstore/product/get-list-best-seller')
  Future<PagingResultML<ProductML>?> getListBestSell();

  @GET('/api/mulstore/product/get-list-good-price-today')
  Future<PagingResultML<ProductML>?> getListGoodPrice();

  @GET('/api/mulstore/product/get-list-new')
  Future<PagingResultML<ProductML>?> getListNew();
}
