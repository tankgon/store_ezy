import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/common/presentation/widgets/btn/btn_camera.dart';
import 'package:mulstore/app/features/auth/self.dart';
import 'package:mulstore/app/features/user/domain/entity/user_base_entity.dart';
import 'package:mulstore/app/features/user/presentation/info/cubit/user_info_cubit.dart';

import 'package:mulstore/app/features/user/presentation/detail_account/detail_account_page.dart';

class UserInfoBody extends StatelessWidget {
  const UserInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.read<UserInfoCubit>().state.item!;
    return AppScrollBody.withSpacing(
      child: Column(
        children: [
          Column(
            children: [
              UserHeader(
                user: user,
              ).cornerRadius(Dimens.rad).pxDefault(),
              Gaps.vGap12,
              user.fullNameOrUserName?.text.titleLarge(context).make(),
              Gaps.vGap12,
              'Hạng kim cương'
                  .tr()
                  .text
                  .center
                  .colorPrimary(context)
                  .make()
                  .px12()
                  .py6()
                  .backgroundColor(
                    context.themeColor.primaryLighter,
                  )
                  .cornerRadius(Dimens.rad_XL2),
              Gaps.vGap12,
              const AppDivider(),
              Column(
                children: [
                  AppTileText(
                    leading: const Icon(
                      PhosphorIcons.info,
                      color: Colors.blue,
                    ),
                    title: 'Tài khoản'.tr(),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              ReceiveDetailAccountPage(user: UserEntity.demo()),
                        ),
                      );
                    },
                  ),
                  AppTileText(
                    leading: const Icon(
                      PhosphorIcons.map_pin,
                      color: Colors.green,
                    ),
                    title: 'Địa chỉ nhận hàng'.tr(),
                    onPressed: () {
                      context.pushRoute(
                        ReceiveAddressRoute(
                          user: user,
                        ),
                      );
                    },
                  ),
                  AppTileText(
                    leading: const Icon(
                      PhosphorIcons.bank,
                      color: Colors.purple,
                    ),
                    title: 'Tài khoản / Thẻ ngân hàng'.tr(),
                    onPressed: () {},
                  ),
                ]
                    .mapAsList((item) => item.minHeight(52))
                    .withDivider(const AppDivider.thin()),
              ),
              const AppDivider(),
              Column(
                children: [
                  AppTileText(
                    leading: const Icon(
                      PhosphorIcons.heart_fill,
                      color: Colors.red,
                    ),
                    title: 'Yêu thích'.tr(),
                    onPressed: () {},
                  ),
                  AppTileText(
                    leading: const Icon(
                      PhosphorIcons.star_fill,
                      color: Color(0xFFF9B83B),
                    ),
                    title: 'Đánh giá, bình luận'.tr(),
                    onPressed: () {},
                  ),
                  AppTileText(
                    leading: const Icon(
                      PhosphorIcons.clock_counter_clockwise,
                      color: Color(0xFF02BEA8),
                    ),
                    title: 'Lịch sử giao dịch'.tr(),
                    onPressed: () {},
                  ),
                ]
                    .mapAsList((item) => item.minHeight(52))
                    .withDivider(const AppDivider.thin()),
              ),
            ].filterNotNullList(),
          ),
          const AppDivider(),
          AppButtonText(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  PhosphorIcons.sign_out,
                  color: context.themeColor.error,
                ),
                'Đăng xuất'.tr().text.colorDark(context).make(),
              ].withDivider(Gaps.hGap8),
            ),
            onPressed: () {
              context
                  .read<AuthBloc>()
                  .add(UnAuthenticatedEvent(showToast: true));
            },
          )
        ],
      ),
    );
  }
}

class UserHeader extends StatelessWidget {
  const UserHeader({super.key, required this.user});

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    const avatarSize = 120.0;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                AspectRatio(
                  aspectRatio: 343 / 138,
                  child: AppImg(
                    user.coverImg,
                    fit: BoxFit.cover,
                  ),
                ),
                BtnCamera(
                  onPressed: () {},
                ).p8(),
              ],
            ),
            const SizedBox(
              height: avatarSize / 2,
            )
          ],
        ),
        Padding(
          padding: Dimens.edge_x_default,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              AppAvatar(
                src: user.avatarImg,
                height: avatarSize,
                background: Colors.white,
                border: Border.all(
                  width: 4,
                  color: Colors.transparent,
                ),
              ),
              BtnCamera(
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
