import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/distributor/presentation/item/layout/distributor_item_layout.dart';
import 'package:ez_store/app/features/distributor/presentation/item/layout/distributor_simple_info_layout_1.dart';
import 'package:ez_store/app/features/distributor/presentation/item/cubit/distributor_item_cubit.dart';
import 'package:ez_store/app/features/distributor/presentation/item/layout/distributor_item_layout_1.dart';

class DistributorItem extends StatelessWidget {
  const DistributorItem({super.key, this.item, this.layoutType});

  final dynamic item;
  final DistributorItemLayoutType? layoutType;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DistributorItemCubit()..fetchItem(),
      child: Builder(builder: (context) {
        return BlocListener<DistributorItemCubit, DistributorItemState>(
          listener: _onStateChanged,
          child: Builder(
            builder: (context) {
              if (layoutType == DistributorItemLayoutType.layout1) {
                return DistributorItemLayout1.demo();
              }
              if (layoutType == DistributorItemLayoutType.layoutSimpleInfo1) {
                return DistributorSimpleInfoLayout1.demo();
              }
              return const SizedBox.shrink();
            },
          ),
        );
      }),
    );
  }

  void _onStateChanged(BuildContext context, DistributorItemState state) {
    if (state.status == ItemDetailStatus.error) {
      DialogUtils.showMaterialDialog(context: context, content: state.errorMsg);
    }
  }
}
