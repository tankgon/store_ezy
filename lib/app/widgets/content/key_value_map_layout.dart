import 'package:ez_store/all_file/all_file.dart';

class KeyValueMapLayout<T> extends StatelessWidget {

  const KeyValueMapLayout({Key? key, this.itemList = const <Widget>[], this.separator = Gaps.empty, required this.keyBuilder, required this.valueBuilder})
      : super(key: key);

  final Widget? separator;
  final List itemList;

  final Widget Function(T? item) keyBuilder;
  final Widget Function(T? item) valueBuilder;

  @override
  Widget build(BuildContext context) {
    if (itemList.isNullOrEmpty()) {
      return Gaps.empty;
    }

    List<Widget> listPair = [];
    for (int i = 0; i < itemList.length; i += 2) {
      listPair.add(Row(
        children: [
          keyBuilder(itemList.getOrNull(i) as T?),
          Gaps.spacer,
          valueBuilder(itemList.getOrNull(i) as T?),
        ],
      ));
      if (separator != null) {
        listPair.add(separator!);
      }
    }

    return Column(
      children: listPair,
    );
  }
}
