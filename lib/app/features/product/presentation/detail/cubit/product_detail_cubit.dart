import 'package:mulstore/all_file/all_file.dart';

part 'product_detail_state.dart';

class ProductDetailCubit extends Cubit<ProductDetailState> {
  ProductDetailCubit({dynamic? item}) : super(ProductDetailState(item: item));
}
