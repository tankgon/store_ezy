import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/checkout/presentation/group_item/checkout_product_list_group.dart';
import 'package:mulstore/app/features/checkout/presentation/main/widget/checkout_pay_detail.dart';
import 'package:mulstore/app/features/user/self.dart';

class CheckoutBody extends StatelessWidget {
  const CheckoutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScrollBody.withSpacing(
      child: Column(
        children: [
          const UserReceiveInfoSection(
            user: UserEntity(),
          ).pxDefault(),
          const CheckoutProductListGroup(),
          const AppDivider(),
          AppTileText.semiBold(
            padding: Dimens.edge,
            title: LocaleKeys.payment_PaymentMethod.tr(),
            onPressed: () {},
          ),
          const AppDivider(),
          const CheckoutPayDetail().pyDefault(),
        ],
      ),
    );
  }
}
