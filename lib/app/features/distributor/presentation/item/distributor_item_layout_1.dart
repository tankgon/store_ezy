import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/distributor/presentation/item/cubit/distributor_item_cubit.dart';
import 'package:velocity_x/src/flutter/text.dart';

class DistributorItemLayout1 extends StatelessWidget {
  const DistributorItemLayout1({
    super.key,
    required this.name,
    this.avatar,
    this.type,
    this.onPressed,
  });

  const DistributorItemLayout1.demo({
    super.key,
    this.name = 'Long chau',
    this.avatar = 'https://vnpayqr.vn/wp-content/uploads/2021/05/Longchau.png',
    this.type = 'Nhà cung cấp',
    this.onPressed,
  });

  final String name;
  final String? avatar;
  final String? type;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DistributorItemCubit, DistributorItemState>(
      builder: (context, state) {
        return AppTileText(
          leading: AppAvatar(
            height: Dimens.ic_XL6,
            src: avatar,
          ),
          titleLabel: name,
          subtitleLabel: type,
          onPressed: onPressed ?? () {},
        );
      },
    );
  }
}
