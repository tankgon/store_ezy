import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/common/presentation/bloc/request_item_cubit.dart';
import 'package:mulstore/app/features/product/domain/entity/product_entity.dart';
import 'package:mulstore/app/features/product/presentation/detail/cubit/product_detail_cubit.dart';
import 'package:mulstore/app/features/product/presentation/detail/product_detail_body.dart';
import 'package:mulstore/app/features/product/presentation/detail/widget/product_bottom_bar.dart';

@RoutePage()
class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key, required this.product});

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductDetailCubit(
        item: product,
      )..fetchItem(),
      child: Builder(builder: (context) {
        return BlocListener<ProductDetailCubit,
            RequestItemState<ProductEntity>>(
          listener: _onStateChanged,
          child: Scaffold(
            appBar: AppAppBar(
              title: '',
            ),
            bottomNavigationBar: AppBottomBar(
              child: ProductBottomBar(),
            ),
            body: ProductDetailBody(),
          ),
        );
      }),
    );
  }

  void _onStateChanged(
      BuildContext context, RequestItemState<ProductEntity> state) {
    if (state.status == ItemDefaultStatus.error) {
      DialogUtils.showErrorDialog(
        context: context,
        content: context.getAppErrorMsg(state.error),
        error: state.error,
      );
    }
  }
}
