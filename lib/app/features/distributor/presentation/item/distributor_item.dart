import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/distributor/presentation/item/layout/distributor_item_layout.dart';
import 'package:mulstore/app/features/distributor/presentation/item/layout/distributor_simple_info_layout_1.dart';
import 'package:mulstore/app/features/distributor/presentation/item/cubit/distributor_item_cubit.dart';
import 'package:mulstore/app/features/distributor/presentation/item/layout/distributor_item_layout_1.dart';

class DistributorItem extends StatelessWidget {
  const DistributorItem({
    super.key,
    this.item,
    this.layoutType,
    this.createState = false,
  });

  final dynamic item;
  final bool createState;
  final DistributorItemLayoutType? layoutType;

  @override
  Widget build(BuildContext context) {
    if (!createState) {
      return _buildItem(item);
    }

    return BlocProvider(
      create: (context) => DistributorItemCubit()..fetchItem(),
      child: Builder(
        builder: (context) {
          return BlocBuilder<DistributorItemCubit, DistributorItemState>(
            builder: (context, state) {
              return _buildItem(state.item);
            },
          );
        },
      ),
    );
  }

  Builder _buildItem(dynamic item) {
    return Builder(
      builder: (context) {
        if (layoutType == DistributorItemLayoutType.layout1) {
          return DistributorItemLayout1.demo();
        }
        if (layoutType == DistributorItemLayoutType.layoutSimpleInfo1) {
          return DistributorSimpleInfoLayout1.demo();
        }
        return const SizedBox.shrink();
      },
    );
  }
}
