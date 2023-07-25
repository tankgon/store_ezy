import 'package:flutter_keyboard_size/flutter_keyboard_size.dart';
import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/domain/entity/product_entity.dart';
import 'package:mulstore/app/features/product/presentation/variant/select_variant/cubit/product_select_variant_cubit.dart';
import 'package:mulstore/app/features/product/presentation/variant/select_variant/product_select_variant_body.dart';
import 'package:mulstore/app/features/shopping_cart/seft.dart';

class ProductSelectVariantPopup extends StatelessWidget {
  const ProductSelectVariantPopup({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return KeyboardSizeProvider(
      child: Consumer<ScreenHeight>(
        builder: (context, _res, child) => BlocProvider(
          create: (context) => ProductSelectVariantCubit(
            product: product,
          )..loadData(),
          child: SingleChildScrollView(
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const ProductSelectVariantBody(),
                    const AppDivider.thin(),
                    BlocBuilder<ProductSelectVariantCubit,
                        ProductSelectVariantState>(
                      builder: (context, state) {
                        final selectVariant = context
                            .read<ProductSelectVariantCubit>()
                            .state
                            .selectedVariant;

                        return SafeArea(
                          child: AppButton(
                            label: 'Chọn mua'.tr(),
                            onPressed: selectVariant == null
                                ? null
                                : () => addToCart(context, selectVariant),
                          ).pDefault(),
                        );
                      },
                    ),
                    SizedBox(
                      height: _res.keyboardHeight,
                    ),
                  ],
                ),
                AppButtonIcon(
                  padding: Dimens.edge,
                  icon: Icons.close_rounded,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void addToCart(BuildContext context, ProductVariantEntity selectVariant) {
    final result = context.read<ShoppingCartBloc>().add(
          ShoppingCartAddItemEvent(
            item: product,
            selectedVariant: selectVariant,
            quantity: context.read<ProductSelectVariantCubit>().state.quantity,
          ),
        );
  }
}
