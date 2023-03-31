import 'package:ez_store/all_file/all_file.dart';

enum ProductVariantItemLayoutType {
  layout1(size: Size(50, 50)),
  layoutTile1(size: Size(400, 48));

  const ProductVariantItemLayoutType({
    required this.size,
  });

  final Size size;
}

class ProductVariantItemArgs {
  const ProductVariantItemArgs({
    this.isSelected = false,
  });

  final bool isSelected;
}