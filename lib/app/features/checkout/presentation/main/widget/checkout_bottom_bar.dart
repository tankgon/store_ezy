import 'package:ez_store/all_file/all_file.dart';

class CheckoutBottomBar extends StatelessWidget {
  const CheckoutBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            '${LocaleKeys.checkout_TotalPay.tr()}:'.text.make(),
            AppPrice(
              price: '1000000',
            ),
          ].withDivider(Gaps.vGap4),
        ).expand(),
        AppButton(
          style: AppButtonTheme.confirmAction(context),
          label: LocaleKeys.shoppingCart_Buy.tr(),
          onPressed: () {
            context.pushRoute(const CheckoutRoute());
          },
        ),
      ],
    );
  }
}

