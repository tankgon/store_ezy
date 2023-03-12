import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

class AppPrice extends StatelessWidget {
  const AppPrice({super.key, required this.price, this.style});

  final String? price;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return price?.toPrice?.text.semiBold
            .textStyle(style)
            .color(
              context.theme.colorScheme.secondary,
            )
            .make() ??
        const SizedBox.shrink();
  }
}

class AppProductPrice extends StatelessWidget {
  const AppProductPrice({
    super.key,
    this.price,
    this.style,
  });

  final String? price;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return AppPrice(
      price: price,
      style: style,
    );
  }
}

class AppListedPrice extends StatelessWidget {
  const AppListedPrice({super.key, this.price, this.style});

  final String? price;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return price?.toPrice?.text.lineThrough.textXS.textStyle(style).colorNeutral(context).make() ?? const SizedBox.shrink();
  }
}
