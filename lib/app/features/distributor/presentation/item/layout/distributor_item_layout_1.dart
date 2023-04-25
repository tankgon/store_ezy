import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/distributor/presentation/item/cubit/distributor_item_cubit.dart';
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
    return Column(
      children: [
        Container(
          decoration: AppDecor.grayBorder(
            context,
          ),
          clipBehavior: Clip.hardEdge,
          child: AppImg(avatar),
        ).aspectRatio(1).expand(),
        SizedBox(
          height: (context.textS) * 2.6,
          child: name.text.caption(context).medium.center.maxLines(2).ellipsis.make().centered(),
        ),
      ].filterNotNull(),
    );
  }
}
