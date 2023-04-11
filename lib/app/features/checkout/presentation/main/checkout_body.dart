import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/checkout/presentation/group_item/checkout_product_list_group.dart';
import 'package:ez_store/app/features/checkout/presentation/main/widget/checkout_pay_detail.dart';
import 'package:ez_store/app/features/user/self.dart';

class CheckoutBody extends StatelessWidget {
  const CheckoutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScrollBody.withSpacing(
      child: Column(
        children: [
          const UserReceiveInfoSection(
            user: UserModel(),
          ).pxDefault(),
          const CheckoutProductListGroup(),
          const AppDivider(),
          AppTileText(
            padding: Dimens.edge,
            titleLabel: LocaleKeys.payment_PaymentMethod.tr(),
            onPressed: () {

            },
          ),
          const AppDivider(),
          const CheckoutPayDetail().pyDefault(),
        ],
      ),
    );
  }
}

