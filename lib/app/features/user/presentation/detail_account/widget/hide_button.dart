import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/button/primary/app_button.dart';
import 'package:easy_localization/easy_localization.dart';

class UserEditBottomBar extends StatelessWidget {
  const UserEditBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppButton(
          style: AppButtonTheme.confirmAction(context),
          isSubmitButton: true,
          label: 'Hủy'.tr(),
          isEnable: false,
          onPressed: () {},
        ).expand(),
        AppButton(
          style: AppButtonTheme.confirmAction(context),
          child: 'Lưu thay đổi'.tr().textAuto.maxLines(1).make(),
          onPressed: () {},
        ).expand(),
      ].withDivider(Gaps.hGap8),
    );
  }
}
