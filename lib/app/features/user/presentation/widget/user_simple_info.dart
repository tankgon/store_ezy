import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user/domain/entity/user_base_entity.dart';

class UserSimpleInfo extends StatelessWidget {
  const UserSimpleInfo({
    super.key,
    required this.user,
    this.subTitle,
    this.onPressed,
  });

  final UserEntity? user;
  final String? subTitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return CardCupertinoEffect(
      onPressed: onPressed,
      child: Row(
        children: [
          AppAvatar(
            src: user?.avatarImg,
            showBorder: false,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (user?.fullNameOrUserName ?? 'Đăng nhập'.tr())?.text.titleMedium(context).maxLines(2).ellipsis.make(),
              subTitle?.text.caption(context).make(),
            ].withDivider(Gaps.vGap8),
          )
        ].withDivider(Gaps.hGap12),
      ),
    );
  }
}
