import 'package:ez_store/all_file/all_file.dart';

enum ProductItemLayoutType {
  layout1(size: Size(175, 315)),

  layoutTile1(size: Size(310, 120)),
  layoutTile2(size: Size(-1, 90));

  const ProductItemLayoutType({required this.size});

  final Size size;
}
