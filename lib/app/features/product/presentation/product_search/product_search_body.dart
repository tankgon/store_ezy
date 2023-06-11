import 'package:mulstore/all_file/all_file.dart';

class ProductSearchBody extends StatelessWidget {
  const ProductSearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: AppScrollBody(
        child: Column(
          children: [
            TabBarWrapperUnderLine(
              child: AppTabBar(
                padding: Dimens.edge_x,
                tabs: [
                  Tab(
                    text: 'Tất cả',
                  ),
                  Tab(
                    text: 'Điện thoại',
                  ),
                  Tab(
                    text: 'Máy tính',
                  ),
                  Tab(
                    text: 'Máy ảnh',
                  ),
                  Tab(
                    text: 'Phụ kiện',
                  ),
                ],
                isScrollable: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
