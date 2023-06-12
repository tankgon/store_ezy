import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/common/domain/entity/common_entity.dart';

class ProductSearchBody extends StatelessWidget {
  const ProductSearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: OrderByType.values.length,
      child: AppScrollBody(
        child: Column(
          children: [
            Gaps.vGap8,
            Row(
              children: [
                'Xếp theo: '.tr().text.make().pl16(),
                AppButtonTabBar(
                  tabs: OrderByType.values.mapAsList(
                    (item) => Tab(text: item.displayValue.tr()),
                  ),
                ).expand(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
