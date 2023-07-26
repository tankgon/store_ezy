import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/shopping_cart/seft.dart';

class ShoppingCartGroupItem extends StatelessWidget {
  const ShoppingCartGroupItem({
    super.key,
    required this.item,
  });

  final ShoppingCartItemGroupEntity item;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
      builder: (context, state) {
        final items = state.items;
        return Column(
          children: [
            Row(
              children: [
                AppCheckBox(
                  onChanged: (value) {},
                ),
                '${item.distributor.name}'
                    .text
                    .titleMedium(context)
                    .semiBold
                    .make()
                    .expand(),
                '${item.productCartList.length} sản phẩm'
                    .text
                    .colorDark(context)
                    .make(),
              ],
            ).pr16(),
            const Divider(
              thickness: 1,
              height: 1,
            ).pxDefault(),
            ListView.separated(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 16),
              itemCount: item.productCartList.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final cartItem = item.productCartList[index];
                return ShoppingCartItem(
                  cartItem: cartItem,
                );
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
                AppIcon.gift,
                color: context.themeColor.green,
              ),
              title: 'Quà'.text.colorDark(context).make(),
              onPressed: () {},
            ),
          ],
        );
      },
    );
  }
}
