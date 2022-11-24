import 'package:ez_store/all_file/all_file.dart';
import 'package:reactive_flutter_typeahead/reactive_flutter_typeahead.dart';
import 'package:reactive_forms/reactive_forms.dart';

class TypeAheadReactiveV2<T> extends StatefulWidget {
  const TypeAheadReactiveV2(
      {Key? key,
      required this.formControlName,
      required this.suggestionsCallback,
      this.hideOnLoading,
      this.hintText,
      this.showDropDown = false,
      this.onSuggestionSelected,
      required this.stringify,
      this.onChanged,
      this.debounceDuration = const Duration(milliseconds: 300),
      this.itemBuilder,
      this.scrollPadding,
      this.direction,
      this.showErrors,
      this.enable,
      this.backgroundColor,
      this.controller})
      : super(key: key);

  final TextEditingController? controller;
  final String formControlName;
  final String? hintText;
  final SuggestionsCallback<T> suggestionsCallback;
  final bool? hideOnLoading;
  final bool? showDropDown;
  final SuggestionSelectionCallback<T>? onSuggestionSelected;
  final ItemBuilder<T>? itemBuilder;

  final String Function(T value) stringify;
  final ValueChanged<String>? onChanged;

  final Duration debounceDuration;

  final EdgeInsets? scrollPadding;
  final AxisDirection? direction;
  final ShowErrorsFunction? showErrors;

  final bool? enable;
  final Color? backgroundColor;

  @override
  State<TypeAheadReactiveV2<T>> createState() => _TypeAheadReactiveV2State<T>();
}

class _TypeAheadReactiveV2State<T> extends State<TypeAheadReactiveV2<T>> {
  StreamSubscription<T?>? valueChangeListener;

  @override
  void initState() {
    callOnBuild(() {
      var control = ReactiveForm.of(context)
          ?.findControl(widget.formControlName) as FormControl<T>?;
      valueChangeListener?.cancel();
      valueChangeListener = control?.valueChanges.listen((value) {
        if (value != null) {
          widget.onSuggestionSelected?.call(value);
        }
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    valueChangeListener?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveTypeAhead<T, T>(
      formControlName: widget.formControlName,
      stringify: widget.stringify,
      direction: widget.direction ?? AxisDirection.up,
      autoFlipDirection: true,
      hideSuggestionsOnKeyboardHide: false,
      suggestionsBoxDecoration: SuggestionsBoxDecoration(
        hasScrollbar: true,
        constraints: BoxConstraints.loose(const Size.fromHeight(250)),
        elevation: 2,
      ),
      textFieldConfiguration: TextFieldConfiguration(
        enabled: widget.enable ?? true,
        controller: widget.controller,
        scrollPadding: widget.scrollPadding ?? const EdgeInsets.all(20.0),
        onChanged: widget.onChanged,
        autofocus: false,
        decoration: AppTextField.primaryStyle(context,
            inputStyleProps: InputStyleProps(
              hintText: widget.hintText,
              backgroundColor: widget.enable == false
                  ? context.theme.hintColor.withOpacity(0.05)
                  : widget.backgroundColor,
              suffixIcon: widget.showDropDown == true
                  ? const Icon(
                      Icons.keyboard_arrow_down,
                      size: Dimens.ic,
                    ).pRight8()
                  : null,
            )),
      ),
      suggestionsCallback: widget.suggestionsCallback,
      noItemsFoundBuilder: (_) => Gaps.empty,
      itemBuilder: widget.itemBuilder ??
          (context, suggestion) {
            return ListTile(
              title: Text(widget.stringify.call(suggestion)),
            );
          },
      errorBuilder: (_, error) {
        logger.e(error);
        return Gaps.empty;
      },

      // onSuggestionSelected: onSuggestionSelected,
      // onSuggestionSelected: (item) {
      //   _controller?.text = stringify?.call(item) ?? item.toString();
      //   (ReactiveForm.of(context)?.findControl(formControlName!)
      //   as FormControl<T>?)
      //       ?.value = item;
      //   onSuggestionSelected?.call(item);
      // },
      loadingBuilder: (context) => SizedBox(
        height: 40,
        child: AppLoading.defaultLoadingBox().objectCenter(),
      ),

      hideOnLoading: widget.hideOnLoading ?? false,
      animationDuration: Duration.zero,
    );
  }
}
