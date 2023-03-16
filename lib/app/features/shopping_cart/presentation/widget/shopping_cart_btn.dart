import 'package:ez_store/all_file/all_file.dart';

class ShoppingCartBtn extends StatelessWidget {
  const ShoppingCartBtn({super.key, this.iconColor, this.padding});

  final Color? iconColor;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return BadgedCount(
      icon: Icon(
        PhosphorIcons.shopping_cart,
        color: context.theme.iconTheme.color,
      ),
      count: 9,
      onPressed: () {
        context.pushRoute(const ShoppingCartRoute());
      },
    );
  }
}
