import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user_order/presentation/shipping_status/order_shipping_status_body.dart';
import 'package:mulstore/app/features/user_order/presentation/shipping_status/cubit/order_shipping_status_cubit.dart';

class OrderShippingStatus extends StatelessWidget {
  const OrderShippingStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrderShippingStatusCubit(),
      child: DefaultStatusConsumer<OrderShippingStatusCubit, OrderShippingStatusState>(
        child: OrderShippingStatusBody(),
      ),
    );
  }   

}
