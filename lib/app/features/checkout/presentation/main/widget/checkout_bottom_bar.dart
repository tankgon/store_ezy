import 'package:mulstore/all_file/all_file.dart';

class CheckoutBottomBar extends StatelessWidget {
  const CheckoutBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final isPay = false;
    return Row(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
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
          label: isPay ? LocaleKeys.checkout_PlaceOrder.tr() : LocaleKeys.checkout_Pay.tr(),
          onPressed: () {
            context.pushRoute(const CheckoutRoute());
          },
        ),
      ],
    );
  }
}
