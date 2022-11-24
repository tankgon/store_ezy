import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/widgets/radio_button/app_radio_button.dart';
import 'package:ez_store/app/widgets/textfield/search/bloc/search_cubit.dart';
import 'package:ez_store/app/widgets/textfield/search/search_bar.dart';

import 'cubit/bottom_sheet_select.dart';

class BottomSheetRadioSelect<T> extends StatelessWidget {
  BottomSheetRadioSelect({
    super.key,
    this.initialItem,
    required this.getItemId,
    required this.getItemTitle,
    this.title,
    required this.fetchList,
    this.showSelectAll = true,
    this.showSearchBar = true,
    this.shrinkWrap,
  });

  final String? title;
  final bool showSelectAll;
  final bool showSearchBar;
  final bool? shrinkWrap;

  final T? initialItem;
  final String? Function(T? item) getItemId;
  final dynamic Function(T? item) getItemTitle;
  final Future<List<T>> Function(int offset, int limit, String? search) fetchList;

  final _controller = AppPagingController<int, T?>(firstPageKey: 0);

  @override
  Widget build(BuildContext context) {
    final listPadding = const EdgeInsets.symmetric(horizontal: 8).copyWith(bottom: 40);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BottomSheetSelectCubit<T>(),
        ),
        BlocProvider(
          create: (context) => SearchCubit(),
        ),
      ],
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
                    title?.text.headline6(context).make().pxDefault().expand() ?? Gaps.spacer,
                    Btn(
                      btnType: BtnType.TEXT,
                      fontWeight: FontWeight.w600,
                      label: 'done'.tr,
                      onPressed: () {
                        var item = context.read<BottomSheetSelectCubit<T>>().state;
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
                if (showSearchBar) const SearchBar().pxDefault().py4(),
                LimitedBox(
                  maxHeight: ScreenUtils.getPercentHeight(percent: 0.7),
                  child: PagingList<T?>(
                    pagingController: _controller,
                    padding: listPadding,
                    shrinkWrap: shrinkWrap ?? false,
                    enablePullDown: !(shrinkWrap ?? false),
                    itemBuilder: (context, item, index) {
                      return _buildItem(item);
                    },
                    fetchListData: (offset, limit) async {
                      final cubit = context.read<BottomSheetSelectCubit<T>>();
                      List<T?>? rs;
                      rs = await fetchList.call(
                        offset,
                        limit,
                        context.read<SearchCubit>().state,
                      );
                      if (showSelectAll == true && offset == 0) {
                        rs = [null, ...rs];
                      }
                      _checkInitialItem(cubit, rs);
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
    return BlocBuilder<BottomSheetSelectCubit<T>, T?>(
      key: Key(getItemId(item) ?? 'null'),
      builder: (context, state) {
        return AppRadioButton<T?>(
          groupValue: state,
          value: item,
          iconPadding: const EdgeInsets.symmetric(vertical: 4),
          title: getItemTitle(item),
          onChanged: (value) {
            context.read<BottomSheetSelectCubit<T>>().selectItem(value);
          },
        );
      },
    );
  }

  void _checkInitialItem(BottomSheetSelectCubit<T> cubit, List<T?>? listItem) {
    if (listItem == null) {
      return;
    }
    if (initialItem != null && cubit.state == null) {
      var selectedItem = listItem.find((item) => getItemId(item) == getItemId(initialItem));
      if (selectedItem != null) {
        cubit.selectItem(selectedItem);
      }
    }
  }
}
