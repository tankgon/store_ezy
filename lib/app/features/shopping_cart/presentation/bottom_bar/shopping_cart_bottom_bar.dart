import 'package:ez_store/all_file/all_file.dart';

/// A stateless widget to render ShoppingCartBottomBar.

class ShoppingCartBottomBar extends StatelessWidget {
  const ShoppingCartBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBottomBar(
      child: Column(
        children: [
          Row(
            children: [
              LocaleKeys.shoppingCart_SelectedNItem.tr(args: ['3']).text.bodySmall(context).make().expand(),
              Icon(
                Icons.discount_outlined,
                color: context.themeColor.green,
                size: Dimens.ic_XS,
              ),
              '-1000000'.toPrice?.text.bodySmall(context).make(),
            ].withDivider(Gaps.hGap8),
          ).minHeight(24),
          const Divider(),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LocaleKeys.shoppingCart_TotalPrice.tr().text.make(),
                  AppPrice(
                    price: '1000000',
                  ),
                ].withDivider(Gaps.vGap4),
              ).expand(),
              AppButton(
                style: AppButtonTheme.primaryStyle(context).copyWith(
                  padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(
                      horizontal: 42,
                      vertical: 14,
                    ),
                  ),
                  textStyle: const MaterialStatePropertyAll(
                    TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                label: LocaleKeys.shoppingCart_Buy.tr(),
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}
