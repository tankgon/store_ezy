import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/widgets/textfield/search/bloc/search_cubit.dart';
import 'package:ez_store/app/widgets/textfield/search/search_bar.dart';
import 'package:reactive_forms/reactive_forms.dart';

class BottomSheetRadioSelectReactive<T> extends StatefulWidget {
  const BottomSheetRadioSelectReactive({
    super.key,
    required this.form,
    required this.controlName,
    this.initialItem,
    required this.getItemId,
    required this.getItemTitle,
    this.title,
    required this.fetchList,
    this.showSearchBar = false,
    this.shrinkWrap = false,
    this.showSelectAll = true,
  });

  final String? title;
  final bool showSearchBar;
  final bool shrinkWrap;
  final bool showSelectAll;

  final FormGroup form;
  final String controlName;
  final T? initialItem;

  final String? Function(T? item) getItemId;
  final String Function(T? item) getItemTitle;
  final Future<List<T>> Function(int offset, int limit, String? search) fetchList;

  @override
  State<BottomSheetRadioSelectReactive<T>> createState() => _BottomSheetRadioSelectReactiveState<T>();
}

class _BottomSheetRadioSelectReactiveState<T> extends State<BottomSheetRadioSelectReactive<T>> {
  T? _initialItem;
  final _controller = AppPagingController<int, T?>(firstPageKey: 0);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _initialItem = widget.initialItem ?? castOrNull(widget.form.control(widget.controlName).value);
  }

  @override
  Widget build(BuildContext context) {
    final listPadding = const EdgeInsets.symmetric(horizontal: 8).copyWith(bottom: 40);
    return BlocProvider(
      create: (context) => SearchCubit(),
      child: Builder(builder: (context) {
        return BlocListener<SearchCubit, String?>(
          listener: (context, state) {
            _controller.refresh();
          },
          child: Material(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    widget.title?.text.headline6(context).make().pxDefault().expand() ?? Gaps.spacer,
                    Btn(
                      btnType: BtnType.TEXT,
                      label: 'finish'.tr,
                      onPressed: () {
                        final item = context.getControl<T>(widget.controlName)?.value;
                        if (item == null) {
                          context.popRoute(
                            DialogReturnMsg.confirmDelete,
                          );
                          return;
                        }
                        context.popRoute(
                          item,
                        );
                      },
                    ),
                  ],
                ),
                if (widget.showSearchBar) const SearchBar().pxDefault().py4(),
                LimitedBox(
                  maxHeight: ScreenUtils.getPercentHeight(percent: 0.7),
                  child: PagingList<T?>(
                    pagingController: _controller,
                    padding: listPadding,
                    shrinkWrap: widget.shrinkWrap,
                    enablePullDown: !widget.shrinkWrap,
                    itemBuilder: (context, item, index) {
                      return _buildItem(item);
                    },
                    fetchListData: (offset, limit) async {
                      List<T?>? rs;
                      rs = await widget.fetchList.call(
                        offset,
                        limit,
                        context.read<SearchCubit>().state,
                      );
                      if (widget.showSelectAll == true && offset == 0) {
                        rs = [null, ...rs];
                      }
                      _checkInitialItem(rs);
                      return rs ?? [];
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget _buildItem(T? item) {
    return RadioBtnReactive<T?>(
      formControlName: widget.controlName,
      value: item,
      label: widget.getItemTitle(item),
      // iconPadding: const EdgeInsets.symmetric(vertical: 4),
      // title: widget.getItemTitle(item),
    );
  }

  void _checkInitialItem(List<T?>? listItem) {
    if (listItem == null) {
      return;
    }
    final control = widget.form.findControl(widget.controlName ?? '') as FormControl<T>?;
    if (_initialItem != null && control?.value == null) {
      final selectedItem = listItem.find((item) => widget.getItemId(item) == widget.getItemId(widget.initialItem));
      if (selectedItem != null) {
        control?.value = widget.initialItem;
      }
    }
  }
}
