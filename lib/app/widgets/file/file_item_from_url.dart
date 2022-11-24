import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/core/utils/file_utils.dart';
import 'package:ez_store/app/widgets/file/file_item.dart';

class FileItemFromUrl extends StatelessWidget {
  const FileItemFromUrl({Key? key, required this.url, required this.alignLeft})
      : super(key: key);

  final String url;
  final bool alignLeft;

  @override
  Widget build(BuildContext context) {
    return FileDemo(
      extension: FileUtils.getExtensionFormPath(url),
      name: FileUtils.getNameFormPath(url),
      fileSize: null,
      // alignLeft: alignLeft,
    );
  }
}
