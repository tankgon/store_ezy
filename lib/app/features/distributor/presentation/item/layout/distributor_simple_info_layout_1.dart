import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/distributor/presentation/item/cubit/distributor_item_cubit.dart';
import 'package:velocity_x/src/flutter/text.dart';

class DistributorSimpleInfoLayout1 extends StatelessWidget {
  const DistributorSimpleInfoLayout1({
    super.key,
    required this.name,
    this.avatar,
    this.type,
    this.onPressed,
  });

  const DistributorSimpleInfoLayout1.demo({
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
    return AppTileText(
      leading: AppAvatar(
        height: Dimens.ic_XL6,
        src: avatar,
      ),
      title: name,
      subtitle: type,
      onPressed: onPressed ?? () {},
    );
  }
}
