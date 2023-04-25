import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user_order/presentation/item/user_order_item_layout_1.dart';
import 'package:mulstore/app/features/user_order/presentation/item/cubit/user_order_item_cubit.dart';

class UserOrderItem extends StatelessWidget {

  const UserOrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserOrderItemCubit()..fetchItem(),
      child: Builder(
          builder: (context) {
            return BlocListener<UserOrderItemCubit, UserOrderItemState>(
              listener: _onStateChanged,
              child: UserOrderItemLayout1(),
            );
          }
      ),
    );
  }   

  void _onStateChanged(BuildContext context, UserOrderItemState state) {
    if (state.status == ItemDefaultStatus.error) {
      DialogUtils.showErrorDialog(
        context: context,
        content: state.error.getServerErrorMsg(),
        error: state.error,
      );
    }
  }
}

class _PageBodyLoading extends StatelessWidget {
  const _PageBodyLoading({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserOrderItemCubit, UserOrderItemState>(
      builder: (context, state) {
        // if (state.status == ItemDetailStatus.error) {
        //   return SimpleErrorText(error: state.errorMsg ?? '');
        // }
        final isLoading = state.status == ItemDefaultStatus.loading || state.status == ItemDefaultStatus.initial;

        return child;
      },
    );
  }
}
