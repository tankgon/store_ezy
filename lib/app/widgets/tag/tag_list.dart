import 'package:ez_store/all_file/all_file.dart';

class TagList<T> extends StatelessWidget {
  const TagList({super.key, required this.tagList, required this.getTagTitle});

  final List<T> tagList;
  final String Function(T item) getTagTitle;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: Dimens.pad_default,
      children: tagList
          .map(
            (e) => TagItemRow(
              title: getTagTitle(e),
              color: context.themeColor.gray5,
            ),
          )
          .toList(),
    );
  }
}

class TagItemRow extends StatelessWidget {
  const TagItemRow({super.key, required this.title, required this.color, this.textSize = Dimens.text_S});

  final String title;
  final Color color;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          AntIcons.tagFilled,
          color: color,
          size: textSize + 5,
        ),
        Gaps.hGap6,
        title.text.size(textSize).color(color).make(),
      ],
    );
  }
}
