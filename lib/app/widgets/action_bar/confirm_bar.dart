import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/widgets/button/btn_form_close.dart';

class ConfirmActionBar extends StatelessWidget {
  const ConfirmActionBar({
    super.key,
    required this.onConfirmPressed,
    this.onConfirmLoading = false,
    this.matchParent = false,
  });

  final VoidCallback? onConfirmPressed;
  final bool onConfirmLoading;
  final bool matchParent;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (matchParent != true) Gaps.spacer,
        const BtnFormClose().expand(flex: matchParent ? 1 : 0),
        Gaps.hGap16,
        Btn(
          label: 'confirm',
          loading: onConfirmLoading,
          padding: Dimens.edge_btn_wide,
          onPressed: onConfirmPressed,
        ).expand(flex: matchParent ? 1 : 0),
      ],
    );
  }
}

class ConfirmActionBarV2 extends StatelessWidget {
  ConfirmActionBarV2({
    super.key,
    required this.onConfirmFunc,
    this.onSuccess,
    this.onFail,
    this.showFailDialog = true,
    this.confirmBtnMatchWidth = false,
    this.isSubmit = false,
  });

  final Future<Object?> Function()? onConfirmFunc;
  final void Function(Object? rs)? onSuccess;
  final void Function(Object? e)? onFail;
  final onConfirmLoadingLD = false.obs;
  final bool showFailDialog;
  final bool confirmBtnMatchWidth;
  final bool isSubmit;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (!confirmBtnMatchWidth) Gaps.spacer,
        Obx(
          () => BtnFormClose(
            enable: !onConfirmLoadingLD.value,
          ),
        ),
        Gaps.hGap16,
        Expanded(
          flex: confirmBtnMatchWidth ? 1 : 0,
          child: Obx(
            () => Btn(
              label: 'confirm',
              loading: onConfirmLoadingLD.value,
              padding: Dimens.edge_btn_wide,
              isSubmit: isSubmit,
              onPressed: onConfirmFunc == null
                  ? null
                  : () async {
                      onConfirmLoadingLD.value = true;
                      try {
                        var rs = await onConfirmFunc?.call();
                        onSuccess?.call(rs);
                      } catch (e) {
                        logger.e(e);
                        if (showFailDialog) {
                          DialogUtils.showAlertDialog(
                            context,
                            content: e.getServerErrorMsg(),
                          );
                        }
                        onFail?.call(e);
                      } finally {
                        onConfirmLoadingLD.value = false;
                      }
                    },
            ),
          ),
        ),
      ],
    );
  }
}
