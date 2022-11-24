import 'package:ez_store/all_file/all_file.dart';
import 'package:flutter_linkify/flutter_linkify.dart';

class AppTextLinkify extends StatelessWidget {
  const AppTextLinkify({Key? key, required this.text, this.style, this.linkStyle}) : super(key: key);

  final String text;
  final TextStyle? style;
  final TextStyle? linkStyle;

  @override
  Widget build(BuildContext context) {
    return Linkify(
      text: text,
      style: style,
      linkStyle: linkStyle,
      options: const LinkifyOptions(humanize: false),
      onOpen: (link) async {
        LauncherUtils.showURL(link.url);
      },
    );
  }
}

