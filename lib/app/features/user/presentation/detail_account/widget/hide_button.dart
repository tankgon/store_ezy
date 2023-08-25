import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/button/primary/app_button.dart';
import 'package:easy_localization/easy_localization.dart';

class HideButton extends StatelessWidget {
  const HideButton({
    super.key,
    required this.isVisible,
  });

  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !isVisible,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppButton(
              style: AppButtonTheme.confirmAction(context),
              isSubmitButton: true,
              label: 'Hủy'.tr(),
              isEnable: false,
              onPressed: () {},
            ).pr8().expand(),
            AppButton(
              style: AppButtonTheme.confirmAction(context),
              label: 'Lưu thay đổi'.tr(),
              onPressed: () {},
            ).pl8().expand(),
          ],
        ),
      ),
    );
  }
}
