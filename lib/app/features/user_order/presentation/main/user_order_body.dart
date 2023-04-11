import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/user_order/data/model/user_order_base_model.dart';
import 'package:ez_store/app/features/user_order/presentation/item/user_order_item.dart';
import 'package:ez_store/app/features/user_order/presentation/main/cubit/user_order_cubit.dart';
import 'package:ez_store/app/features/user_order/presentation/main/user_order_tab.dart';

class UserOrderBody extends StatelessWidget {
  const UserOrderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserOrderCubit, UserOrderState>(
      builder: (context, state) {
        final item = state.item;
        return DefaultTabController(
          length: OrderStatus.values.length,
          child: Column(
            children: [
              TabBarWrapperUnderLine(
                child: AppTabBar(
                  padding: Dimens.edge_x,
                  tabs: OrderStatus.values.mapAsList(
                    (item) => Tab(
                      text: '${item.enumTranslate()} (2)', // userOrder.OrderStatus.canceled
                    ),
                  ),
                  isScrollable: true,
                ),
              ),
              TabBarView(
                children: OrderStatus.values.mapAsList(
                  (item) => UserOrderTab(),
                ),
              ).expand(),
            ],
          ),
        );
      },
    );
  }
}

class _OrderTab extends StatelessWidget {
  const _OrderTab({super.key});

  @override
  Widget build(BuildContext context) {
    return PagingList<dynamic>(
      itemBuilder: (context, item, index) {
        return UserOrderItem();
      },
      fetchListData: (offset, limit) {
        return Future.value([1,2,3]);
      },
    );
  }
}
