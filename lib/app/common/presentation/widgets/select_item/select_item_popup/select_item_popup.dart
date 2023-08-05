import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:mulstore/all_file/all_file.dart';

//TODO: demo
// _demo() {
//   final selectItem = await BottomSheetUtils.showMaterial(context: context, child: SelectItemPopup<AddressEntity>(
//     fetchListData: repo.getData(offset, limit),
//   );
//   print(selectItem?.name)
// }

class SelectItemPopup<T> extends StatelessWidget {
  const SelectItemPopup({
    super.key,
    required this.fetchListData,
    required this.itemToString,
    this.itemBuilder,
  });

  final PagingListFetchFunc<T> fetchListData;
  final String Function(T item) itemToString;
  final ItemWidgetBuilder<T>? itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: Column(
          children: [
            AppTextField(
              decoration: InputDecoration(
                hintText: 'Tìm'.tr(),
                prefixIcon: const Icon(Icons.search),
              ),
            )
          ],
        ),
      ),
      body: PagingList<T>(
        fetchListData: fetchListData,
        itemBuilder: itemBuilder ??
            (context, item, index) {
              return AppTileText(
                title: itemToString(item),
                onPressed: () {
                  Navigator.pop(context, item);
                },
              );
            },
      ),
    );
  }
}
