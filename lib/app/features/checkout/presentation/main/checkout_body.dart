import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/checkout/presentation/main/cubit/checkout_cubit.dart';

class CheckoutBody extends StatelessWidget {

  const CheckoutBody({super.key}) ;

  @override
  Widget build(BuildContext context) {
    return AppScrollBody(
      child: BlocBuilder<CheckoutCubit, CheckoutState>(
        builder: (context, state) {
          final item = state.item;
          return Column(
            children: [

            ],
          );
        },
      ),
    );
  }
}
