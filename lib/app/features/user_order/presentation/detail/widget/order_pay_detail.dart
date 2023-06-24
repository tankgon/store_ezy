import 'package:mulstore/all_file/all_file.dart';

class OrderPaymentDetail extends StatelessWidget {
  const OrderPaymentDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: LocaleKeys.checkout_PayDetail.tr(),
        ),
        const AppDivider.thin().pDefault(),
        AppKeyValueList(
          keyTextBuilder: (context, item) => '$item:'.text.textS.make(),
          valueTextBuilder: (context, item) => item.text.textS.colorDarkest(context).make(),
          children: [
            LocaleKeys.checkout_TotalPrice.tr(),
            '5000'.toPrice,
            LocaleKeys.checkout_Discount.tr(),
            '-5000'.toPrice,
            LocaleKeys.checkout_TotalPay.tr(),
            '5000'.toPrice?.text.textS.colorDarkest(context).medium.make(),
          ],
        ).pxDefault(),
      ],
    );
  }
}
