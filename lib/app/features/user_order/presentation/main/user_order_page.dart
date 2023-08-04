import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/shopping_cart/presentation/widget/shopping_cart_btn.dart';
import 'package:mulstore/app/features/user_order/presentation/main/cubit/user_order_cubit.dart';
import 'package:mulstore/app/features/user_order/presentation/main/user_order_body.dart';

@RoutePage()
class UserOrderPage extends StatelessWidget {
  const UserOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserOrderCubit()..fetchItem(),
      child: Builder(builder: (context) {
        return BlocListener<UserOrderCubit, UserOrderState>(
          listener: _onStateChanged,
          child: Scaffold(
            appBar: AppAppBar(
              title: 'Đơn hàng'.tr(),
              args: AppBarArgs(
                centerTitle: false,
                elevation: 0,
                actions: [
                  AppButtonIcon(
                    icon: PhosphorIcons.magnifying_glass,
                    onPressed: () {},
                  ),
                  const ShoppingCartBtn(),
                  Gaps.hGap4,
                ].withDivider(Gaps.hGap4, showLast: true),
              ),
            ),
            body: const UserOrderBody(),
          ),
        );
      }),
    );
  }

  void _onStateChanged(BuildContext context, UserOrderState state) {
    if (state.status == ItemStatus.error) {
      DialogUtils.showErrorDialog(
        context: context,
        content: context.getAppErrorMsg(state.error),
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
    return BlocBuilder<UserOrderCubit, UserOrderState>(
      builder: (context, state) {
        // if (state.status == ItemDetailStatus.error) {
        //   return SimpleErrorText(error: state.errorMsg ?? '');
        // }
        final isLoading = state.status == ItemStatus.loading ||
            state.status == ItemStatus.initial;

        return child;
      },
    );
  }
}
