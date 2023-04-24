import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/user/domain/entity/user_base_entity.dart';

class UserReceiveInfoSection extends StatelessWidget {
  const UserReceiveInfoSection({
    super.key,
    required this.user,
  });

  final UserEntity user;

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
              LocaleKeys.user_UserReceiveInfo.tr().text.titleMedium(context).make(),
            ].withDivider(Gaps.hGap8),
          ).p12(),
          const _Divider(),
          AppTile(
            padding: Dimens.edge_XS,
            title: _UserDetail(
              name: 'user.name',
              phone: 'user.phone',
              address: 'user.address',
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class UserReceiveInfo extends StatelessWidget {
  const UserReceiveInfo({
    super.key,
    required this.user,
  });

  final UserEntity user;

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
            LocaleKeys.user_UserReceiveInfo.tr().text.titleMedium(context).make().pt2(),
            Gaps.vGap8,
            _UserDetail(
              name: 'user.name',
              phone: 'user.phone',
              address: 'user.address',
            ),
          ],
        ).expand(),
      ],
    );
  }
}

class _UserDetail extends StatelessWidget {
  const _UserDetail({
    super.key,
    required this.name,
    required this.phone,
    required this.address,
  });

  final String name;
  final String phone;
  final String address;

  @override
  Widget build(BuildContext context) {
    bool isLogin = true;
    if (!isLogin) {
      return LocaleKeys.user_AddUserReceiveInfo.tr().text.colorLight(context).make();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        '$name  |  $phone'.text.colorDark(context).make(),
        address.text.colorDark(context).make(),
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
