import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/checkout/presentation/item/checkout_product_item.dart';

class CheckoutProductGroupItem extends StatelessWidget {
  const CheckoutProductGroupItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Icon(PhosphorIcons.storefront),
            'Group 1'.text.titleMedium(context).semiBold.make().expand(),
          ].withDivider(Gaps.hGap8),
        ).pDefault(),
        const Divider(
          thickness: 1,
          height: 1,
        ).pxDefault(),
        ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemCount: 2,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return const CheckoutProductItem();
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 20);
          },
        ).pxDefault(),
        const Divider(
          thickness: 1,
          height: 1,
        ).pxDefault(),
        AppTile(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          space: 10,
          title: 'Giảm 5%'.text.textS.colorDark(context).make(),
          leading: Icon(
            PhosphorIcons.gift,
            color: context.themeColor.green,
          ),
          trailing: '-100000'.toPrice?.text.textS.colorDark(context).make(),
        ),
        const Divider(
          thickness: 1,
          height: 1,
        ).pxDefault(),
        Row(
          children: [
            '${LocaleKeys.checkout_TotalPriceNItems.tr(
              args: ['3'],
            )}:'
                .text
                .textS
                .colorDark(context)
                .make()
                .expand(),
            AppPrice(
              price: '5000000',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: context.textS,
              ),
            ),
          ],
        ).pDefault()
      ],
    );
  }
}
