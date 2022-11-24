import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/widgets/paging/paging_list.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class AppSeeAllPage extends StatelessWidget {
  const AppSeeAllPage({
    Key? key,
    required this.title,
    required this.fetchListData,
    required this.itemBuilder,
    this.separatorBuilder,
    this.pagingController,
    this.padding,
  }) : super(key: key);

  final String title;
  final Future<List<dynamic>> Function(int page, int pageSize) fetchListData;
  final ItemWidgetBuilder<dynamic> itemBuilder;
  final IndexedWidgetBuilder? separatorBuilder;
  final AppPagingController<int, dynamic>? pagingController;

  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: title,
      ),
      body: SafeArea(
        bottom: false,
        child: PagingList(
          pagingController: pagingController,
          padding: padding,
          itemBuilder: itemBuilder,
          fetchListData: fetchListData,
          separatorBuilder: separatorBuilder,
        ),
      ),
    );
  }
}
