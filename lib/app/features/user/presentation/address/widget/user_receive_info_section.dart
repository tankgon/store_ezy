import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user/domain/entity/user_base_entity.dart';

class UserReceiveAddressSection extends StatelessWidget {
  const UserReceiveAddressSection({
    super.key,
    required this.address,
  });

  final UserAddressEntity address;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecor.grayBorder(context),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                PhosphorIcons.map_pin_line,
                color: context.themeColor.greyLighter,
              ),
              'Địa chỉ nhận hàng'.tr().text.titleMedium(context).make(),
            ].withDivider(Gaps.hGap8),
          ).p12(),
          const _Divider(),
          AppTile(
            padding: Dimens.edge_XS,
            title: UserAddressItem(
              address: address,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class UserReceiveAddress extends StatelessWidget {
  const UserReceiveAddress({
    super.key,
    required this.address,
  });

  final UserAddressEntity address;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(
          PhosphorIcons.map_pin_line,
        ).pr12(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            'Địa chỉ nhận hàng'.tr().text.titleMedium(context).make().pt2(),
            Gaps.vGap8,
            UserAddressItem(
              address: address,
            ),
          ],
        ).expand(),
      ],
    );
  }
}

class UserAddressItem extends StatelessWidget {
  const UserAddressItem({
    super.key,
    required this.address,
  });

  final UserAddressEntity address;

  @override
  Widget build(BuildContext context) {
    bool isLogin = true;
    if (!isLogin) {
      return LocaleKeys.user_AddUserReceiveInfo
          .tr()
          .text
          .colorLight(context)
          .make();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (address.addressAndPhone.isNotNullOrBlank)
          address.addressAndPhone!.text.colorDark(context).make(),
        if (address.fullAddress.isNotNullOrBlank)
          address.fullAddress!.text.colorDark(context).make(),
        if (address.addressType != null)
          address.addressType?.displayValue
              .tr()
              .text
              .colorPrimary(context)
              .make()
              .px12()
              .py4()
              .backgroundColor(context.themeColor.primaryLighter)
              .cornerRadius(Dimens.rad_XL4)
              .pt4(),
      ].withDivider(Gaps.vGap4),
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: SizedBox(
        height: 3,
        child: AppMargin(
          horizontal: -10,
          child: Transform(
            transform: Matrix4.skewX(0.7),
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 24,
                  child: Row(
                    children: [
                      Container(
                        color: const Color(0xFFFEB1B1),
                      ).expand(),
                      Container(
                        color: const Color(0xFFB1D0FE),
                      ).expand(),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) => Gaps.hGap4,
              itemCount: MediaQuery.of(context).size.width ~/ 20,
            ),
          ),
        ),
      ),
    );
  }
}
