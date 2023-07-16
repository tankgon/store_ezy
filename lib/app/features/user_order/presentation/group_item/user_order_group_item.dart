import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/checkout/presentation/item/checkout_product_item.dart';

class UserOrderGroupItem extends StatelessWidget {
  const UserOrderGroupItem({
    super.key,
    this.showStatus = true,
    this.limitItemShow,
  });

  final bool showStatus;
  final int? limitItemShow;

  void _onItemClick(BuildContext context) {
    context.pushRoute(const UserOrderDetailRoute());
  }

  @override
  Widget build(BuildContext context) {
    final totalItemCount = 3;
    return Column(
      children: [
        Row(
          children: [
            const Icon(PhosphorIcons.storefront),
            'Group 1'.text.titleMedium(context).semiBold.make().expand(),
          ].withDivider(Gaps.hGap8),
        ).pDefault(),
        Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 16),
              itemCount:
                  limitItemShow != null ? limitItemShow! : totalItemCount,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return const CheckoutProductItem();
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 20);
              },
            ).pxDefault(),
            if (limitItemShow != null && limitItemShow! < totalItemCount) ...[
              const AppDivider.thin().pxDefault(),
              AppButtonText(
                label: LocaleKeys.common_SeeAll.tr(),
                color: context.textTheme.bodySmall?.color,
                onPressed: () {
                  _onItemClick(context);
                },
              ),
            ]
          ],
        ),
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
        ).pDefault(),
        if (showStatus)
          AppTile(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            space: 10,
            title: 'Đang chờ duyệt'
                .text
                .textS
                .color(context.themeColor.orange)
                .make(),
            leading: Icon(
              PhosphorIcons.truck,
              color: context.themeColor.orange,
            ),
            onPressed: () {
              _onItemClick(context);
            },
          ),
      ].withDivider(
        const Divider(
          thickness: 1,
          height: 1,
        ),
      ),
    );
  }
}
