import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/presentation/variant/select_variant/cubit/select_product_variant_cubit.dart';
import 'package:mulstore/app/features/product/presentation/variant/select_variant/select_product_variant_body.dart';
import 'package:flutter_keyboard_size/flutter_keyboard_size.dart';

class SelectProductVariant extends StatelessWidget {
  const SelectProductVariant({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardSizeProvider(
      child: Consumer<ScreenHeight>(
        builder:(context, _res, child) => BlocProvider(
          create: (context) => SelectProductVariantCubit(),
          child: SingleChildScrollView(
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SelectProductVariantBody(),
                    const AppDivider.thin(),
                    SafeArea(
                      child: AppButton(
                        label: LocaleKeys.product_Buy.tr(),
                      ).pDefault(),
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
