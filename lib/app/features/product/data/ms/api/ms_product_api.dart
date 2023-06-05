import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/data/ms/model/ms_product_model.dart';

part 'ms_product_api.g.dart';

@RestApi()
abstract class MsProductApi {
  factory MsProductApi(Dio dio) = _MsProductApi;

  @GET('/api/mulstore/product/get-list-hot')
  Future<MsPagingResult<MsProduct>?> getListHot({
    @Query('page') int? offset,
    @Query('limit') int? limit,
  });

  @GET('/api/mulstore/product/get-list-best-seller')
  Future<MsPagingResult<MsProduct>?> getListBestSell({
    @Query('page') int? offset,
    @Query('limit') int? limit,
  });

  @GET('/api/mulstore/product/get-list-good-price-today')
  Future<MsPagingResult<MsProduct>?> getListGoodPrice({
    @Query('page') int? offset,
    @Query('limit') int? limit,
  });

  @GET('/api/mulstore/product/get-list-new')
  Future<MsPagingResult<MsProduct>?> getListNew({
    @Query('page') int? offset,
    @Query('limit') int? limit,
  });
}
