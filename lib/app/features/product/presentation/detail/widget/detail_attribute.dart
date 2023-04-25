import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/widgets/container/show_more/more_btn.dart';

class ProductDetailAttribute extends StatelessWidget {
  const ProductDetailAttribute({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShowMoreLayoutTextList(
      moreBtnBuilder: (showMore, onTap) {
        return AppMoreBtn(
          onPressed: onTap,
          isMore: showMore,
        );
      },
      valueList: <String?>[
        LocaleKeys.product_Category.tr(),
        'Trị sẹo, mờ vết thâm',
        LocaleKeys.product_Packing.tr(),
        'Tuýp',
        LocaleKeys.product_OriginOrBrand.tr(),
        'Ý',
        LocaleKeys.product_Uses.tr(),
        'Gel trị sẹo QDerma với thành phần chính Cyclopentasiloxane có khả\n năng\n khả\n năng vân vân và mây mây dài lắm luông ',
      ],
      maxVisiblePair: 4,
      maxVisibleTotalLine: 6,
      pairMaxLine: 2,
    );
  }
}
