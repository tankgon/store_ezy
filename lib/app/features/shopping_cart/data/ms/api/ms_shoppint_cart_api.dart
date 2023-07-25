import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/shopping_cart/data/ms/model/base_shopping_cart_model.dart';

part 'ms_shoppint_cart_api.g.dart';

@RestApi()
abstract class MsShoppingCartApi {
  factory MsShoppingCartApi(Dio dio) = _MsShoppingCartApi;

  @POST('/api/mulstore/cart/add-cart')
  Future<void> addCart({
    @Body() MsShoppingCartAddReq? body,
  });

  @GET('/api/mulstore/cart/get-list-cart')
  Future<List<MsShoppingCart>> getCartList();
}
