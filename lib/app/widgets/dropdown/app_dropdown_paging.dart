import 'package:ez_store/all_file/all_file.dart';
import 'package:flutter_portal/flutter_portal.dart';

class AppDropdownPaging<T> extends StatefulWidget {
  const AppDropdownPaging({super.key, this.hintText, required this.itemToString, required this.fetchListData, this.separatorBuilder, required this.onItemSelect, this.defaultText, this.anchor});

  final String? defaultText;
  final String? hintText;
  final String Function(T item) itemToString;
  final PagingListFetchFunc<T> fetchListData;
  final IndexedWidgetBuilder? separatorBuilder;
  final Anchor? anchor;

  final void Function(T item) onItemSelect;

  @override
  State<AppDropdownPaging<T>> createState() => _AppDropdownPagingState<T>();
}

class _AppDropdownPagingState<T> extends State<AppDropdownPaging<T>> {
  final Rx<String?> _text = Rx<String?>(null);
  final _controller = AppPagingController<int, T>(
    firstPageKey: 0,
  );
  final _isFocusLD = false.obs;

  @override
  void initState() {
    _text.value = widget.defaultText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          children: [
            Obx(
              () => PortalTarget(
                visible: _isFocusLD.value,
                anchor: widget.anchor ??
                    const Aligned(
                      follower: Alignment.bottomCenter,
                      target: Alignment.topCenter,
                    ),
                portalFollower: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    _isFocusLD.value = false;
                  },
                  child: Material(
                    elevation: 3,
                    borderRadius: Dimens.rad_border_circular_XS,
                    child: PagingList<T>(
                      enablePullDown: false,
                      pagingController: _controller,
                      itemBuilder: (_, item, __) => ListTile(
                        title: widget.itemToString(item).text.make(),
                        onTap: () {
                          _isFocusLD.value = false;
                          widget.onItemSelect(item);
                          _text.value = widget.itemToString(item);
                          FocusScope.of(context).unfocus();
                        },
                      ),
                      fetchListData: widget.fetchListData,
                      separatorBuilder: widget.separatorBuilder,
                      noItemsFoundIndicatorBuilder: (context) => Gaps.empty,
                    ).maxHeight(200).maxWidth(maxWidth: constraints.maxWidth),
                  ),
                ),
                child: Gaps.empty,
              ),
            ),
            GestureDetector(
              onTap: () {
                _isFocusLD.value = !_isFocusLD.value;
              },
              child: Container(
                decoration: AppDecor.grayBorder(context),
                child: Row(
                  children: [
                    Obx(() => _text.value?.text.make().expand() ?? Gaps.spacer),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: context.theme.primaryColor,
                    ).pOnly(left: 8),
                  ],
                ).pxDefault().py8(),
              ),
            )
          ],
        );
      },
    );
  }
}
