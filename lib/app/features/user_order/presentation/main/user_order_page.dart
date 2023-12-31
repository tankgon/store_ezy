import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/shopping_cart/presentation/widget/shopping_cart_btn.dart';
import 'package:ez_store/app/features/user_order/presentation/main/cubit/user_order_cubit.dart';
import 'package:ez_store/app/features/user_order/presentation/main/user_order_body.dart';

class UserOrderPage extends StatelessWidget {

  const UserOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserOrderCubit()..fetchItem(),
      child: Builder(
          builder: (context) {
            return BlocListener<UserOrderCubit, UserOrderState>(
              listener: _onStateChanged,
              child: Scaffold(
                body: NestedScrollView(
                  headerSliverBuilder: (context, innerBoxIsScrolled) {
                    return [
                      AppAppBarSliver(
                        title: LocaleKeys.userOrder_Orders.tr(),
                        args: AppBarArgs(
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
                    ];
                  },
                  body: const UserOrderBody(),
                ),
              ),
            );
          }
      ),
    );
  }   

  void _onStateChanged(BuildContext context, UserOrderState state) {
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
    return BlocBuilder<UserOrderCubit, UserOrderState>(
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
