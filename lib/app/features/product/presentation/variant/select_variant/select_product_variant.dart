import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/product/presentation/variant/select_variant/cubit/select_product_variant_cubit.dart';
import 'package:ez_store/app/features/product/presentation/variant/select_variant/select_product_variant_body.dart';

class SelectProductVariant extends StatelessWidget {
  const SelectProductVariant({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SelectProductVariantCubit(),
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
                bottom: true,
                child: AppButton(
                  label: LocaleKeys.product_Buy.tr(),
                ).pDefault(),
              ),
            ],
          ),
          AppButtonIcon(
            padding: Dimens.edge,
            icon: Icons.close_rounded,
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}
