import 'package:ez_store/all_file/all_file.dart';

extension DropdownMenuItemExt on List<DropdownMenuItem>{
  List<DropdownMenuItem<T>> withAlterNative<T>({String? alterNativeTitle}){
    return [
      DropdownMenuItem(
        value: null,
        child: (alterNativeTitle ?? 'all'.tr).text.make(),
      ),
      ...this as List<DropdownMenuItem<T>>
    ];
  }
}

class AppDropDown<T> extends StatelessWidget {
  const AppDropDown({
    super.key,
    required this.value,
    this.inputStyleProps,
    this.onChanged,
    required this.items,
    this.disable,
  });

  final List<DropdownMenuItem<T>> items;
  final InputStyleProps? inputStyleProps;
  final ValueChanged<T?>? onChanged;
  final T? value;
  final bool? disable;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: ButtonTheme(
        alignedDropdown: true,
        child: DropdownButtonFormField<T>(
          key: key,
          items: items,
          elevation: 1,
          value: value,
          borderRadius: BorderRadius.circular(Dimens.rad_S),
          icon: Icon(
            Icons.keyboard_arrow_down,
            color: context.theme.primaryColor,
          ).pRight8(),
          onChanged: disable ?? false ? null : onChanged,
          decoration: AppTextField.primaryStyle(
            context,
            inputStyleProps: inputStyleProps ??
                const InputStyleProps(contentPadding: Dimens.edge_y_default),
          ),
        ),
      ),
    );
  }
}
