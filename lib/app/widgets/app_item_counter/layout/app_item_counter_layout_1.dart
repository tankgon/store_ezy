import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/widgets/app_item_counter/app_item_counter_args.dart';

class AppCartItemCounterLayout1 extends StatelessWidget {
  const AppCartItemCounterLayout1({
    super.key,
    required this.callback,
    required this.controller,
  });

  final AppCartItemCounterCallBack callback;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: context.theme.inputDecorationTheme.fillColor,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: context.themeColor.greyLighter),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppButton(
            style: AppButtonTheme.none(context).copyWith(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(2))),
              padding: MaterialStateProperty.all(const EdgeInsets.all(2)),
            ),
            onPressed: callback.onRemove,
            child: const Icon(Icons.remove_rounded),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.symmetric(vertical: BorderSide(color: context.themeColor.greyLighter)),
            ),
            child: IntrinsicWidth(
              child: AppTextField(
                controller: controller,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                textAlign: TextAlign.center,
                decoration: AppTextFieldTheme.none(context).copyWith(
                  contentPadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                ),
                onLostFocus: _onValueChange,
              ),
            ).px8(),
          ).maxWidth(80).minWidth(44).flex(),
          AppButton(
            style: AppButtonTheme.none(context).copyWith(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(2))),
              padding: MaterialStateProperty.all(const EdgeInsets.all(2)),
            ),
            onPressed: callback.onAdd,
            child: const Icon(Icons.add_rounded),
          ),
        ],
      ),
    );
  }

  void _onValueChange(String value) {
    final parse = int.tryParse(value);
    if (parse != null) {
      callback.onValueChange?.call(parse);
    }
  }
}
