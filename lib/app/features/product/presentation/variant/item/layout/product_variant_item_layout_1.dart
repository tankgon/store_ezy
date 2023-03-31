import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/product/self.dart';

class ProductVariantItemLayout1 extends StatelessWidget {
  const ProductVariantItemLayout1({super.key, required this.item, this.args});

  final ProductVariantEntity item;
  final ProductVariantItemArgs? args;

  @override
  Widget build(BuildContext context) {
    return AppImg(
      item.img,
    );
  }
}
