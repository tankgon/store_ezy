import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/common/data/ms/repo/ms_app_setting_repo.dart';
import 'package:mulstore/app/features/product/data/ms/api/ms_product_api.dart';
import 'package:mulstore/app/features/product/data/ms/model/ms_product_model.dart';
import 'package:mulstore/app/features/product/domain/entity/product_entity.dart';
import 'package:mulstore/app/features/product/domain/repo/product_repo.dart';

class MsProductRepo extends ProductRepo {
  MsProductRepo({MsProductApi? productApi, MsAppSettingRepo? settingRepo}) {
    _api = productApi ?? getIt();
    _settingRepo = settingRepo ?? getIt();
  }

  late final MsProductApi _api;
  late final MsAppSettingRepo _settingRepo;

  @override
  Future<List<ProductEntity>> getProductList({
    int? offset,
    int? limit,
    ProductListType? type,
    ProductListShowType? showType,
  }) async {
    MsPagingResult<MsProduct>? rs;

    switch (type) {
      case ProductListType.hot:
        if (showType == ProductListShowType.homePage) {
          final setting = await _settingRepo.getAppSetting();
          if (setting?.maxHotProductsShowing != null) {
            final nextOffset = (offset ?? 0) + (limit ?? 0);
            if (nextOffset > setting!.maxHotProductsShowing!) {
              limit = (offset ?? 0) + setting.maxHotProductsShowing!;
            }
          }
        }
        rs = await _api.getListHot(
          offset: offset,
          limit: limit,
        );
        break;
      case ProductListType.newest:
        rs = await _api.getListNew(
          offset: offset,
          limit: limit,
        );
        break;
      case ProductListType.bestSeller:
        rs = await _api.getListBestSell(
          offset: offset,
          limit: limit,
        );
        break;
      case ProductListType.goodPrice:
        rs = await _api.getListGoodPrice(
          offset: offset,
          limit: limit,
        );
        break;
      case null:
        return [];
    }
    return rs?.result?.map((e) => e.toEntity()).toList() ?? [];
  }

  @override
  Future<ProductEntity> getProductDetail({
    required String? id,
  }) async {
    if (id == null) throw Exception('id must not be null');
    return _api
        .getProductDetail(
          productID: id,
        )
        .then((value) => value!.toEntity());
  }

  @override
  Future<List<ProductEntity>> getProductListByBrand({
    required String? id,
    int? limit,
    int? offset,
  }) {
    // TODO: implement getProductListByBrand
    throw UnimplementedError();
  }

  @override
  Future<List<ProductEntity>> getProductListByCategory({
    required String? id,
    int? limit,
    int? offset,
  }) {
    // TODO: implement getProductListByCategory
    throw UnimplementedError();
  }
}
