import 'package:ez_store/all_file/all_file.dart';
import 'package:html/dom.dart' as dom;
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

ImageRender _networkImageRenderC({
  Map<String, String>? headers,
  double? width,
  double? height,
  Widget Function(String)? altWidget,
}) =>
    (context, attributes, element) {
      // print("parent: ${element!.parent!.localName}");
      if (element?.parent?.parent?.localName == 'picture') {
        return Container();
      }
      return SizedBox(
        width: Get.width,
        child: Img(
          attributes['src'],
          canZoom: true,
        ),
      ).objectCenter().cornerRadius(Dimens.rad_S);
    };

final Map<ImageSourceMatcher, ImageRender> _defaultImageRenders = {
  assetUriMatcher(): _networkImageRenderC(),
  networkSourceMatcher(extension: 'svg'): _networkImageRenderC(),
  networkSourceMatcher(): _networkImageRenderC(),
};

class HtmlBody extends StatelessWidget {
  final String? data;
  final Map<String, Style>? mapStyle;

  const HtmlBody({
    super.key,
    this.data,
    this.mapStyle,
  });

  @override
  Widget build(BuildContext context) {
    if (data.isNullOrEmpty()) {
      return 'contentIsUpdating'.text.make().py8();
    }

    final htmlStyle = HtmlBody.getHtmlStyle(context);
    if (mapStyle != null) {
      htmlStyle.addAll(mapStyle!);
    }

    return Html(
      style: htmlStyle,
      shrinkWrap: false,
      customImageRenders: _defaultImageRenders,
      customRender: {
        'table': (context, child) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: (context.tree as TableLayoutElement).toWidget(context),
          );
        },
        // "picture": (context, child) {
        //   var a = context.tree.children;
        //   var b;
        //   a.forEach((element) {
        //     // print('element: ${element.attributes["type"]}');
        //     if (element.attributes["type"] == "image/webp") {
        //       String src = (element.attributes["srcset"]) ?? "";
        //       // print('src $src');
        //       b = SizedBox(width: Get.width, child: Img(src))
        //           .cornerRadius(Dimens.rad_S);
        //     }
        //   });
        //   return b;
        // },
        // "source": (context, child) {}
      },
      tagsList: Html.tags..addAll(['picture', 'source']),
      data: data!,
      onLinkTap: (url, context, attributes, element) {
        _handleLinkTap(url, context, attributes, element);
      },
    );
  }

  void _handleLinkTap(
    String? url,
    RenderContext context,
    Map<String, String> attributes,
    dom.Element? element,
  ) {
    if (url != null) {
      UrlLauncher.launchUrl(Uri.parse(url));
    }
  }

  static Map<String, Style> getHtmlStyle(BuildContext context) {
    final theme = context.theme;
    final lineHeight = LineHeight.em(1.3);
    return {
      ...Style.fromThemeData(theme),
      'body': Style(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
      ),
      'html': Style(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        lineHeight: lineHeight,
      ),
      'p': Style(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
      ),
      'strong': Style(
        textAlign: TextAlign.center,
      ),
      'li': Style(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
      ),
      'li:not(:last-child)': Style(
        padding: const EdgeInsets.only(bottom: 0, left: 0),
      ),
      'ul': Style(
        listStylePosition: ListStylePosition.OUTSIDE,
      ),
      'table': Style(
        backgroundColor: Theme.of(context).unselectedWidgetColor.withOpacity(0.1),
        // border: Border.all(color: Theme.of(context).hintColor),
      ),
      'tr': Style(
        border: Border.all(color: Theme.of(context).hintColor.withOpacity(0.3)),
        // border: Border(bottom: BorderSide(color: Colors.grey)),
      ),
      'th': Style(
        padding: const EdgeInsets.all(6),
        backgroundColor: Colors.grey,
      ),
      'td': Style(
        padding: const EdgeInsets.all(6),
      ),
    };
  }
}
