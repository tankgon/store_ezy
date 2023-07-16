import 'package:flutter_keyboard_size/flutter_keyboard_size.dart';
import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/domain/entity/product_entity.dart';
import 'package:mulstore/app/features/product/presentation/variant/select_variant/cubit/product_select_variant_cubit.dart';
import 'package:mulstore/app/features/product/presentation/variant/select_variant/product_select_variant_body.dart';

class ProductSelectVariant extends StatelessWidget {
  const ProductSelectVariant({
    super.key,
    required this.product,
    this.variantList,
  });

  final ProductEntity product;
  final List<ProductAttributeEntity>? variantList;

  @override
  Widget build(BuildContext context) {
    return KeyboardSizeProvider(
      child: Consumer<ScreenHeight>(
        builder: (context, _res, child) => BlocProvider(
          create: (context) => ProductSelectVariantCubit(
            product: product,
            item: variantList,
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
                            onPressed: selectVariant == null ? null : () {},
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
}
