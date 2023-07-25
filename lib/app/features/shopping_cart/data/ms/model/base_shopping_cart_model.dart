import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/distributor/domain/entity/distributor_entity.dart';
import 'package:mulstore/app/features/product/data/ms/model/ms_product_model.dart';
import 'package:mulstore/app/features/product/self.dart';
import 'package:mulstore/app/features/shopping_cart/seft.dart';

part 'base_shopping_cart_converter.dart';
part 'base_shopping_cart_model.g.dart';

@JsonSerializable()
class MsShoppingCartAddReq {
  final String? productVersionID;
  final String? productSKUID;
  final int? quantity;

  const MsShoppingCartAddReq({
    this.productVersionID,
    this.productSKUID,
    this.quantity,
  });

  factory MsShoppingCartAddReq.fromJson(Map<String, dynamic> json) =>
      _$MsShoppingCartAddReqFromJson(json);

  Map<String, dynamic> toJson() => _$MsShoppingCartAddReqToJson(this);
}

@JsonSerializable()
class MsShoppingCart {
  final String? sellerID;
  final String? sellerContactFullName;
  final String? sellerBusinessName;
  final List<MsProductCart>? dataCart;
  final int? countCart;

  const MsShoppingCart({
    this.sellerID,
    this.sellerContactFullName,
    this.sellerBusinessName,
    this.dataCart,
    this.countCart,
  });

  factory MsShoppingCart.fromJson(Map<String, dynamic> json) =>
      _$MsShoppingCartFromJson(json);

  Map<String, dynamic> toJson() => _$MsShoppingCartToJson(this);
}

@JsonSerializable()
class MsProductCart extends MsProduct {
  final int? quantity;
  final int? price;
  final List<MsProductCartAttribute>? attribute;

  const MsProductCart({
    super.productID,
    super.productName,
    super.productDescription,
    super.medias,
    this.quantity,
    this.price,
    this.attribute,
  });

  factory MsProductCart.fromJson(Map<String, dynamic> json) =>
      _$MsProductCartFromJson(json);

  Map<String, dynamic> toJson() => _$MsProductCartToJson(this);
}

@JsonSerializable()
class MsProductCartAttribute {
  final String? localizedAttributeValueID;
  final String? locAttributeValueName;
  final String? locAttributeValueDescription;
  final String? attributeValueID;
  final String? locAttributeName;
  final String? attributeID;

  const MsProductCartAttribute({
    this.localizedAttributeValueID,
    this.locAttributeValueName,
    this.locAttributeValueDescription,
    this.attributeValueID,
    this.locAttributeName,
    this.attributeID,
  });

  factory MsProductCartAttribute.fromJson(Map<String, dynamic> json) =>
      _$MsProductCartAttributeFromJson(json);

  Map<String, dynamic> toJson() => _$MsProductCartAttributeToJson(this);
}
