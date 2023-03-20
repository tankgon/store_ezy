import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/checkout/presentation/main/checkout_body.dart';
import 'package:ez_store/app/features/checkout/presentation/main/cubit/checkout_cubit.dart';
import 'package:ez_store/app/features/checkout/presentation/main/widget/checkout_bottom_bar.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CheckoutCubit()..fetchItem(),
      child: Builder(
        builder: (context) {
          return BlocListener<CheckoutCubit, CheckoutState>(
            listener: _onStateChanged,
            child: Scaffold(
              appBar: AppAppBar(
                title: LocaleKeys.checkout_Checkout.tr(),
                args: const AppBarArgs(
                  centerTitle: true,
                ),
              ),
              body: CheckoutBody(),
              bottomNavigationBar: const AppBottomBar(
                child: CheckoutBottomBar(),
              ),
            ),
          );
        },
      ),
    );
  }

  void _onStateChanged(BuildContext context, CheckoutState state) {
    if (state.status == ItemDetailStatus.error) {
      DialogUtils.showMaterialDialog(context: context, content: state.errorMsg);
    }
  }
}
