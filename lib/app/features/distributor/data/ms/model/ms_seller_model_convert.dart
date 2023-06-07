part of 'ms_seller_model.dart';

extension MsSellerModelConvert on MsSellerModel {
  DistributorEntity toEntity() {
    return DistributorEntity(
      id: sellerID,
      name: businessName ?? contactFullName,
      type: 'user-type',
      img: ImageEntity(
        src: linkString,
      ),
    );
  }
}
