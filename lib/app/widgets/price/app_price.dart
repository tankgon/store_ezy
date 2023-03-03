import 'package:ez_store/all_file/all_file.dart';

class AppPrice extends StatelessWidget {
  const AppPrice({super.key, required this.price});

  final String? price;

  @override
  Widget build(BuildContext context) {
    return price?.toPrice?.text.semiBold
            .color(
              context.theme.colorScheme.secondary,
            )
            .make() ??
        const SizedBox.shrink();
  }
}

class AppProductPrice extends StatelessWidget {
  const AppProductPrice({super.key, this.price});

  final String? price;

  @override
  Widget build(BuildContext context) {
    return AppPrice(price: price);
  }
}

class AppListedPrice extends StatelessWidget {
  const AppListedPrice({super.key, this.price});

  final String? price;

  @override
  Widget build(BuildContext context) {
    return price?.toPrice?.text.lineThrough.xs.make() ?? const SizedBox.shrink();
  }
}
