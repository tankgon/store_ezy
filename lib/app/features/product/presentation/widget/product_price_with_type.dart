import 'package:mulstore/all_file/all_file.dart';

class ProductPriceWithType extends StatelessWidget {
  const ProductPriceWithType({
    super.key,
    required this.price,
    required this.type,
    this.priceStyle,
    this.typeStyle,
  });

  final String? price;
  final TextStyle? priceStyle;
  final String? type;
  final TextStyle? typeStyle;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        AppPrice(
          price: price,
          style: priceStyle,
        ),
        if (type.isNotNullOrEmpty)
          ' /${type ?? ''}'
              .textAuto
              .textStyle(
                typeStyle ??
                    context.textTheme.bodySmall?.copyWith(
                      color: context.themeColor.grey,
                    ),
              )
              .make(),
      ].filterNotNullList(),
    );
  }
}
