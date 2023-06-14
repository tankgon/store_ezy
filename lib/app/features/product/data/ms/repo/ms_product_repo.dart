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

  ProductEntity _convertProduct(MsProduct product) {
    return product.toEntity();
  }

  List<ProductEntity> _convertListProduct(MsPagingResult<MsProduct>? rs) {
    return rs?.result?.map(_convertProduct).toList() ?? [];
  }

  @override
  Future<List<ProductEntity>> getProductList({
    int? offset,
    int? limit,
    ProductListType? type,
    ProductListShowType? showType,
  }) async {
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
        return _api
            .getListHot(
              offset: offset,
              limit: limit,
            )
            .then(_convertListProduct);
      case ProductListType.newest:
        return _api
            .getListNew(
              offset: offset,
              limit: limit,
            )
            .then(_convertListProduct);
      case ProductListType.bestSeller:
        return _api
            .getListBestSell(
              offset: offset,
              limit: limit,
            )
            .then(_convertListProduct);
      case ProductListType.goodPrice:
        return _api
            .getListGoodPrice(
              offset: offset,
              limit: limit,
            )
            .then(_convertListProduct);
      case null:
        return [];
    }
  }

  @override
  Future<ProductEntity> getProductDetail({
    required String? id,
  }) async {
    if (id == null) throw Exception('id must not be null');
    final product = await _api.getProductDetail(
      productID: id,
    );
    if (product != null) {
      return _convertProduct(product);
    }
    throw Exception('Không tìm thấy sản phẩm');
  }

  @override
  Future<List<ProductEntity>> getProductListSearch({
    int? limit,
    int? offset,
    ProductFilterData? filterData,
  }) {
    final productID = filterData?.relatedProductID;
    final productCategoryID = filterData?.productCategoryID;
    final sellerID = filterData?.sellerID;
    if (productID != null) {
      if (productCategoryID != null) {
        return _api
            .getProductSameCategory(
              productID: productID,
              productCategoryID: productCategoryID,
              limit: limit,
              offset: offset,
            )
            .then(_convertListProduct);
      }
      if (sellerID != null) {
        return _api
            .getProductSameSeller(
              productID: productID,
              sellerID: sellerID,
              limit: limit,
              offset: offset,
            )
            .then(_convertListProduct);
      }
    }

    return getProductList(
      limit: limit,
      offset: offset,
      type: filterData?.type,
      showType: filterData?.showType,
    );
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
