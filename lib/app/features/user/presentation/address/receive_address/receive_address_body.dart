import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user/presentation/address/receive_address/cubit/receive_address_cubit.dart';
import 'package:mulstore/app/features/user/presentation/address/widget/user_receive_info_section.dart';

class ReceiveAddressBody extends StatelessWidget {
  const ReceiveAddressBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScrollBody(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          BlocBuilder<ReceiveAddressCubit, ReceiveAddressState>(
            builder: (context, state) {
              final list = state.list;
              return ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: Dimens.edge,
                itemBuilder: (context, index) {
                  final item = list.getOrNull(index);
                  if (item == null) {
                    return const SizedBox.shrink();
                  }
                  return UserAddressItem(
                    address: item,
                  );
                },
                separatorBuilder: (context, index) =>
                    const AppDivider.thin().py12(),
                itemCount: list.length,
              );
            },
          ),
          Gaps.vGap12,
          AppButton(
            style: AppButtonTheme.ghost(context),
            label: 'Thêm địa chỉ'.tr(),
            onPressed: () {
              context.pushRoute(
                CrudAddressRoute(
                  addAddressFuture: (item) {
                    context.read<ReceiveAddressCubit>().addItem(item);
                    return Future.value(item);
                  },
                ),
              );
            },
          ).pxDefault()
        ],
      ),
    );
  }
}
