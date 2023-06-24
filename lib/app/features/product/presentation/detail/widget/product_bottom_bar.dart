import 'package:mulstore/all_file/all_file.dart';

class ProductBottomBar extends StatelessWidget {
  const ProductBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: 70,
            child: AppButton(
              style: AppButtonTheme.ghost(context),
              onPressed: () {},
              child: const Icon(PhosphorIcons.phone),
            ),
          ),
          SizedBox(
            width: 70,
            child: AppButton(
              style: AppButtonTheme.ghost(context),
              onPressed: () {},
              child: const Icon(PhosphorIcons.chat_circle_text),
            ),
          ),
          AppButton(
            style: AppButtonTheme.primary(context),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(PhosphorIcons.shopping_cart),
                Gaps.hGap8,
                LocaleKeys.product_Buy.tr().text.semiBold.make(),
              ],
            ),
          ).expand(),
        ].withDivider(Gaps.hGap8),
      ),
    );
  }
}
