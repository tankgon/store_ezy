import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user_order/presentation/group_item/user_order_list_group.dart';

class UserOrderTab extends StatelessWidget {
  const UserOrderTab({super.key});

  @override
  Widget build(BuildContext context) {
    return PagingList(
      itemBuilder: (context, item, index) {
        return UserOrderListGroup();
      },
      fetchListData: (offset, limit) {
        return Future.value([1, 2, 3]);
      },
      noItemsFoundIndicatorBuilder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.icons.common.emptyBox.svg(),
            Gaps.vGap16,
            LocaleKeys.userOrder_NoOrderYet.tr().text.make(),
          ],
        );
      },
    );
  }
}
