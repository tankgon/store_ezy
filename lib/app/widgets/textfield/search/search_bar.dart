import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/widgets/textfield/search/bloc/search_cubit.dart';
import 'package:ez_store/app/widgets/textfield/search/btn_search_with_clear.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
    this.controller,
    this.onSearch,
    this.onClearPressed,
    this.onFocusChange,
    this.triggerSearchOnClear = false,
    this.backgroundColor,
    this.focusNode,
    this.borderColor,
    this.borderWidth = 1,
    this.focusedBorder,
  });

  final TextEditingController? controller;
  final bool triggerSearchOnClear;

  final void Function(BuildContext context, String? value)? onSearch;
  final VoidCallback? onClearPressed;
  final void Function(bool hasFocus, String value)? onFocusChange;
  final Color? backgroundColor;
  final FocusNode? focusNode;
  final Color? borderColor;
  final double borderWidth;
  final InputBorder? focusedBorder;

  @override
  Widget build(BuildContext context) {
    return TextFieldOutline(
      controller: controller,
      hintText: 'search',
      backgroundColor: backgroundColor ?? context.themeColor.gray6,
      borderColor: borderColor,
      focusedBorder: focusedBorder,
      borderWidth: 0,
      showCounter: false,
      maxLines: 4,
      minLines: 1,
      showClear: true,
      suffixMaxWidth: 200,
      focusNode: focusNode,
      onFocusChange: (hasFocus, value) {
        onFocusChange?.call(hasFocus, value);
      },
      clearBtnBuilder: (controller, showClearBtn) {
        return BtnSearchWithClear(
          controller: controller,
          showClearBtn: showClearBtn,
          searchPressed: (context, value) {
            _onSearch(context, value);
          },
          onClear: () {
            onClearPressed?.call();
            _callSearchOnClear(context);
          },
        );
      },
      textInputAction: TextInputAction.search,
      onFieldSubmitted: (controller, value) {
        _onSearch(context, value);
      },
    );
  }

  void _callSearchOnClear(BuildContext context) {
    if (triggerSearchOnClear == true) {
      _onSearch(context, controller?.text);
    }
  }

  void _onSearch(BuildContext context, String? value) {
    final searchCubit = context.read<SearchCubit?>();
    if (searchCubit != null) {
      searchCubit.search(value);
    }
    onSearch?.call(context, value);
  }
}
