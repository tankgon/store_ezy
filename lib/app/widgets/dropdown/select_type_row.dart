import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/widgets/dropdown/bottom_sheet/bottom_sheet_radio_select.dart';

class SelectTypeRowHorizontal<T> extends StatelessWidget {
  const SelectTypeRowHorizontal({
    super.key,
    required this.title,
    required this.getItemId,
    required this.getItemTitle,
    this.shrinkWrap,
    this.showSearchBar = false,
    required this.fetchList,
    required this.controlName,
  });

  final String controlName;
  final String title;
  final String? Function(T? item) getItemId;
  final dynamic Function(T? item) getItemTitle;
  final bool? shrinkWrap;
  final bool showSearchBar;
  final Future<List<T>> Function(int offset, int limit, String? search) fetchList;

  @override
  Widget build(BuildContext context) {
    return CardCupertinoEffect(
      onPressed: () async {
        final control = context.getControl<T>(controlName);
        final selectItem = await BottomSheetUtils.showMaterial(
          context: context,
          child: BottomSheetRadioSelect<T>(
            title: title,
            showSearchBar: showSearchBar,
            initialItem: control?.value,
            getItemId: getItemId,
            getItemTitle: getItemTitle,
            fetchList: fetchList,
            shrinkWrap: shrinkWrap,
          ),
        );
        if (selectItem is T) {
          control?.value = selectItem;
        }
        if (selectItem == DialogReturnMsg.confirmDelete) {
          control?.value = null;
        }
      },
      child: Row(
        children: [
          title.text.make(),
          ReactiveControlBuilder<T>(
            controlName: controlName,
            builder: (child, value) {
              if (value == null) {
                return 'all'.text.end.make();
              }
              final title = getItemTitle(value);
              if (title is Widget) {
                return title;
              } else if (title is String) {
                return title.text.end.make();
              }
              return Gaps.empty;
            },
          ).expand(),
          const Icon(
            Icons.arrow_forward_ios_outlined,
          ),
        ],
      ).minHeight(Dimens.minRowHeight),
    );
  }
}

class SelectTypeRowVertical<T> extends StatelessWidget {
  const SelectTypeRowVertical({
    super.key,
    required this.title,
    required this.getItemId,
    required this.getItemTitle,
    required this.getItemStr,
    this.shrinkWrap,
    this.showSearchBar = false,
    required this.fetchList,
    required this.controlName,
  });

  final String controlName;
  final String title;
  final String? Function(T? item) getItemId;
  final dynamic Function(T? item) getItemTitle;
  final String Function(T? item) getItemStr;
  final bool? shrinkWrap;
  final bool showSearchBar;
  final Future<List<T>> Function(int offset, int limit, String? search) fetchList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        title.text.headline6(context).make(),
        Gaps.vGap8,
        CardCupertinoEffect(
          onPressed: () async {
            final control = context.getControl<T>(controlName);
            final selectItem = await BottomSheetUtils.showMaterial(
              context: context,
              child: BottomSheetRadioSelect<T>(
                title: title,
                showSearchBar: showSearchBar,
                initialItem: control?.value,
                getItemId: getItemId,
                getItemTitle: getItemTitle,
                fetchList: fetchList,
                shrinkWrap: shrinkWrap,
              ),
            );
            if (selectItem is T) {
              control?.value = selectItem;
            }
            if (selectItem == DialogReturnMsg.confirmDelete) {
              control?.value = null;
            }
          },
          child: ReactiveControlBuilder<T>(
            controlName: controlName,
            builder: (child, value) {
              return Container(
                decoration: AppDecor.grayBorder(context),
                child: Row(
                  children: [
                    Expanded(
                      child: getItemStr(value).text.make(),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: context.themeColor.actionColor,
                    ),
                  ],
                ).pxDefault().py12(),
              );
            },
          ),
        ),
      ],
    );
  }
}

class SelectTypeRowHorizontalDropdown<T> extends StatelessWidget {
  const SelectTypeRowHorizontalDropdown({
    super.key,
    required this.title,
    required this.getItemId,
    required this.getItemTitle,
    required this.getItemStr,
    this.shrinkWrap,
    this.showSearchBar = false,
    this.showSelectAll = true,
    required this.fetchList,
    required this.controlName,
  });

  final String controlName;
  final String title;
  final String? Function(T? item) getItemId;
  final dynamic Function(T? item) getItemTitle;
  final String Function(T? item) getItemStr;
  final bool? shrinkWrap;
  final bool showSearchBar;
  final Future<List<T>> Function(int offset, int limit, String? search) fetchList;
  final bool showSelectAll;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CardCupertinoEffect(
          onPressed: () async {
            final control = context.getControl<T>(controlName);
            final selectItem = await BottomSheetUtils.showMaterial(
              context: context,
              child: BottomSheetRadioSelect<T>(
                title: title,
                showSearchBar: showSearchBar,
                initialItem: control?.value,
                getItemId: getItemId,
                getItemTitle: getItemTitle,
                fetchList: fetchList,
                shrinkWrap: shrinkWrap,
                showSelectAll: showSelectAll,
              ),
            );
            if (selectItem is T) {
              control?.value = selectItem;
            }
            if (selectItem == DialogReturnMsg.confirmDelete) {
              control?.value = null;
            }
          },
          child: ReactiveControlBuilder<T>(
            controlName: controlName,
            builder: (child, value) {
              return Container(
                decoration: AppDecor.grayBorder(context),
                child: Row(
                  children: [
                    title.text.make(),
                    Expanded(
                      child: getItemStr(value).text.end.make(),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: context.themeColor.actionColor,
                    ),
                  ],
                ).pxDefault().py12(),
              );
            },
          ),
        ),
      ],
    );
  }
}
