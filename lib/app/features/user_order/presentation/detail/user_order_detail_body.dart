import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user/self.dart';
import 'package:mulstore/app/features/user_order/presentation/detail/widget/order_pay_detail.dart';
import 'package:mulstore/app/features/user_order/presentation/group_item/user_order_group_item.dart';
import 'package:mulstore/app/features/user_order/presentation/shipping_status/order_shipping_status.dart';

class UserOrderDetailBody extends StatelessWidget {
  const UserOrderDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScrollBody.withSpacing(
      child: Column(
        children: [
          const UserReceiveInfo(
            user: UserEntity(),
          ).pxDefault().pb16(),
          OrderShippingStatus(),
          const UserOrderGroupItem(
            showStatus: false,
          ),
          AppTileText(
            padding: Dimens.edge,
            title: LocaleKeys.payment_PaymentMethod.tr(),
            subtitle: 'Thanh toán khi nhận hàng',
          ),
          const OrderPaymentDetail().pyDefault(),
        ].withDivider(const AppDivider()),
      ),
    );
  }
}
