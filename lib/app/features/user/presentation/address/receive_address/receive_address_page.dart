import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user/domain/entity/user_base_entity.dart';
import 'package:mulstore/app/features/user/presentation/address/receive_address/cubit/receive_address_cubit.dart';
import 'package:mulstore/app/features/user/presentation/address/receive_address/receive_address_body.dart';

@RoutePage()
class ReceiveAddressPage extends StatelessWidget {
  const ReceiveAddressPage({
    super.key,
    required this.user,
  });

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReceiveAddressCubit(
        user: user,
        list: List.generate(
          3,
          (index) => UserAddressEntity(
            id: '$index',
            fullAddress: 'Địa chỉ $index',
            phone: '09009090$index',
            fullName: 'Người nhận $index',
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppAppBar(
          title: 'Địa chỉ nhận hàng'.tr(),
        ),
        body: ReceiveAddressBody(),
      ),
    );
  }
}
