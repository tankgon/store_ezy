import 'package:ez_store/all_file/all_file.dart';

enum AppAlertType { success, info, warning, error }

class AppAlert extends StatelessWidget {
  const AppAlert({Key? key, this.label, required this.type, this.subLabel})
      : super(key: key);

  final String? label;
  final String? subLabel;
  final AppAlertType type;

  static Color colorFormType(BuildContext context, AppAlertType type) {
    switch (type) {
      case AppAlertType.success:
        return context.themeColor.successColor;
      case AppAlertType.info:
        return context.themeColor.infoColor;
      case AppAlertType.warning:
        return context.themeColor.warningColor;
      case AppAlertType.error:
        return context.themeColor.error;
    }
  }

  @override
  Widget build(BuildContext context) {
    final Color color = colorFormType(context, type);

    return Container(
      padding: Dimens.edge_default,
      decoration: BoxDecoration(
          color: color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(Dimens.rad_XS)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!label.isNullOrEmpty()) label!.text.color(color).make(),
          if (!label.isNullOrEmpty() && !subLabel.isNullOrEmpty()) Gaps.vGap4,
          if (!subLabel.isNullOrEmpty()) subLabel!.text.make()
        ],
      ),
    );
  }
}
