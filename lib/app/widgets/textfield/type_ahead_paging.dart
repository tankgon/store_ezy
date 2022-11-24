import 'package:ez_store/all_file/all_file.dart';
import 'package:flutter_portal/flutter_portal.dart';

class TypeAheadPaging<T> extends StatefulWidget {
  const TypeAheadPaging(
      {Key? key,
      this.hintText,
      required this.itemToString,
      this.fetchListData,
      this.separatorBuilder,
      required this.onItemSelect,
      this.defaultText})
      : super(key: key);

  final String? defaultText;
  final String? hintText;
  final String Function(T item) itemToString;
  final PagingListFetchFunc<T>? fetchListData;
  final IndexedWidgetBuilder? separatorBuilder;

  final void Function(T item) onItemSelect;

  @override
  State<TypeAheadPaging<T>> createState() => _TypeAheadPagingState<T>();
}

class _TypeAheadPagingState<T> extends State<TypeAheadPaging<T>> {
  TextEditingController? _textController;
  final _controller = AppPagingController<int, T>(
    firstPageKey: 0,
  );
  late final FocusNode _focusNode;
  final _isFocusLD = false.obs;

  @override
  void initState() {
    _focusNode = FocusNode();
    _textController = TextEditingController(text: widget.defaultText);
    super.initState();
  }
  
  @override
  void dispose() {
    _textController?.dispose();
    _focusNode.dispose();
    super.dispose();
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
                anchor: const Aligned(
                  follower: Alignment.bottomCenter,
                  target: Alignment.topCenter,
                ),
                portalFollower: Material(
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
                        _textController?.text = widget.itemToString(item);
                        FocusScope.of(context).unfocus();
                      },
                    ),
                    fetchListData: widget.fetchListData,
                    separatorBuilder: widget.separatorBuilder,
                    noItemsFoundIndicatorBuilder: (context) => Gaps.empty,
                  ).maxHeight(300).maxWidth(maxWidth: constraints.maxWidth),
                ),
                child: Gaps.empty,
              ),
            ),
            TextFieldOutline(
              hintText: widget.hintText,
              focusNode: _focusNode,
              controller: _textController,
              onFocusChange: (hasFocus, value) {
                _isFocusLD.value = hasFocus;
              },
            )
          ],
        );
      },
    );
  }
}
