import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/shopping_cart/presentation/item/shopping_cart_item.dart';

class ShoppingCartGroupItem extends StatelessWidget {
  const ShoppingCartGroupItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AppCheckBox(
              onChanged: (value) {},
            ),
            'Group 1'.text.titleMedium(context).semiBold.make().expand(),
            '3 sản phẩm'.text.colorDark(context).make(),
          ],
        ).pr16(),
        const Divider(
          thickness: 1,
          height: 1,
        ).pxDefault(),
        ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemCount: 3,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return const ShoppingCartItem();
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 26);
          },
        ),
        const Divider(
          thickness: 1,
          height: 1,
        ).pxDefault(),
        AppTile(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          leading: Icon(
            PhosphorIcons.gift,
            color: context.themeColor.green,
          ),
          title: 'Tổng tiền'.text.colorDark(context).make(),
          onPressed: () {},
        ),
      ],
    );
  }
}
