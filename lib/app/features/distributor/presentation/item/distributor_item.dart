import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/distributor/presentation/item/distributor_simple_info_layout_1.dart';
import 'package:ez_store/app/features/distributor/presentation/item/cubit/distributor_item_cubit.dart';
import 'package:ez_store/app/features/distributor/presentation/item/distributor_item_layout_1.dart';

class DistributorItem extends StatelessWidget {
  const DistributorItem({super.key, this.item, this.layoutName});

  final dynamic item;
  final String? layoutName;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DistributorItemCubit()..fetchItem(),
      child: Builder(builder: (context) {
        return BlocListener<DistributorItemCubit, DistributorItemState>(
          listener: _onStateChanged,
          child: Builder(
            builder: (context) {
              if (layoutName == (DistributorItemLayout1).toString()) {
                return DistributorItemLayout1.demo();
              }
              return DistributorSimpleInfoLayout1.demo();
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
