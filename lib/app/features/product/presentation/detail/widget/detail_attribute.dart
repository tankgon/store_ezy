import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/common/presentation/widgets/container/show_more/more_btn.dart';
import 'package:mulstore/app/features/product/self.dart';

class ProductDetailAttribute extends StatelessWidget {
  const ProductDetailAttribute({
    super.key,
    this.item,
  });

  final ProductEntity? item;

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
        'Danh mục'.tr(),
        item?.category?.name,
        'Quy cách'.tr(),
        'Demo quy cách',
        'Xuất xứ thương hiệu'.tr(),
        item?.madeIn,
        'Công dụng'.tr(),
        item?.productUses,
      ],
      maxVisiblePair: 4,
      maxVisibleTotalLine: 6,
      pairMaxLine: 2,
    );
  }
}
