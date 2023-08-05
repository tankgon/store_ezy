import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/shopping_cart/seft.dart';

class ShoppingCartBottomBar extends StatelessWidget {
  const ShoppingCartBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBottomBar(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const _TotalCountSection().minHeight(24),
          const Divider(),
          Gaps.vGap4,
          const _TotalPriceSection(),
        ],
      ),
    );
  }
}

class _TotalCountSection extends StatelessWidget {
  const _TotalCountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        LocaleKeys.shoppingCart_SelectedNItem
            .tr(args: ['3'])
            .text
            .bodySmall(context)
            .make()
            .expand(),
        Icon(
          AppIcon.coupon,
          color: context.themeColor.green,
          size: Dimens.ic_XS,
        ),
        '-1000000'.toPrice?.text.bodySmall(context).make(),
      ].withDivider(Gaps.hGap8),
    );
  }
}

class _TotalPriceSection extends StatelessWidget {
  const _TotalPriceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LocaleKeys.shoppingCart_TotalPrice.tr().text.make(),
            BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
              builder: (context, state) {
                return AppPrice(
                  price: context.read<ShoppingCartBloc>().getTotalPrice(),
                );
              },
            ),
          ].withDivider(Gaps.vGap4),
        ).expand(),
        AppButton(
          style: AppButtonTheme.confirmAction(context),
          label: 'Tiếp tục'.tr(),
          onPressed: () {
            context.pushRoute(const CheckoutRoute());
          },
        ),
      ],
    );
  }
}
