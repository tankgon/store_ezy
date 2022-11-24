import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/widgets/action_bar/confirm_bar.dart';

class DialogWarning extends StatelessWidget {
  DialogWarning({
    Key? key,
    required this.title,
    required this.body,
    required this.onConfirmPressed,
  }) : super(key: key);

  final String title;
  final Object? body;

  final Future<dynamic> Function() onConfirmPressed;
  final onConfirmLoadingLD = false.obs;

  @override
  Widget build(BuildContext context) {
    Widget? bodyFinal;
    final bodyLocal = body;
    if (bodyLocal is Widget) {
      bodyFinal = bodyLocal;
    } else if (bodyLocal is String) {
      bodyFinal = bodyLocal.text.center.make();
    } else {
      bodyFinal = Gaps.empty;
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Gaps.vGap12,
        Assets.icons.warningIc.svg(
          color: context.themeColor.warningColor,
          width: 55,
          height: 55,
        ),
        Gaps.vGap12,
        title.text.center.headline5(context).make(),
        Gaps.vGap16,
        bodyFinal,
        Gaps.vGap20,
        Obx(
          () => ConfirmActionBar(
            onConfirmLoading: onConfirmLoadingLD.value,
            onConfirmPressed: () async {
              var navigator = Navigator.of(context, rootNavigator: true);
              onConfirmLoadingLD.value = true;
              try {
                var rs = await onConfirmPressed();
                navigator.pop(DialogReturnMsg.ok);
              } catch (e) {
                logger.e(e);
                DialogUtils.showAlertDialog(context,
                    content: e.getServerErrorMsg());
              } finally {
                onConfirmLoadingLD.value = false;
              }
            },
          ),
        ),
        Gaps.vGap12,
      ],
    ).pxDefault();
  }
}
