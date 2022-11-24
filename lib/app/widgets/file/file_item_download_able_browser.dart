import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/core/utils/file_utils.dart';
import 'package:ez_store/app/widgets/file/file_item.dart';

class FileItemDownloadAbleBrowser extends StatelessWidget {
  const FileItemDownloadAbleBrowser(
      {Key? key, required this.url, this.alignLeft = true})
      : super(key: key);

  final String url;
  final bool alignLeft;

  @override
  Widget build(BuildContext context) {
    return CardCupertinoEffect(
      onPressed: () => LauncherUtils.showURL(url),
      child: Container(
        color: context.themeColor.grayBackground,
        child: FileDemo(
          extension: FileUtils.getExtensionFormPath(url),
          name: FileUtils.getNameFormPath(url),
          fileSize: null,
          // alignLeft: alignLeft,
          indicator: SizedBox.square(
            dimension: 22,
            child: FittedBox(
              child: Btn(
                btnType: BtnType.TEXT,
                padding: Dimens.edge_zero,
                child: Icon(
                  Icons.file_download,
                  color: context.themeText.text.color,
                ),
              ),
            ),
          ),
        ).p8(),
      ).cornerRadius(Dimens.rad),
    );
  }
}
