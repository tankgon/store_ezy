import 'package:ez_store/all_file/all_file.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LauncherUtils {
  LauncherUtils._();

  static Future<bool> callNumber(BuildContext context, String phone) async {
    final Uri uri = Uri(
      scheme: 'tel',
      path: phone,
    );
    if (!await launchUrl(uri)) {
      return Future.value(false);
    }
    return Future.value(true);
  }

  static Future<bool> showURL(String url, {LaunchMode? launchMode}) async {
    var urlFinal = url;
    if (!urlFinal.contains('http')) {
      urlFinal = 'https://$urlFinal';
    }

    var mode = launchMode ??
        (Platform.isAndroid
            ? LaunchMode.externalApplication
            : LaunchMode.platformDefault);

    if (!await launchUrl(
      Uri.parse(urlFinal),
      mode: mode,
    )) {
      return Future.value(false);
    }
    return Future.value(true);
  }

  static Future<bool> emailTo({required String email}) async {
    final Uri uri = Uri(
      scheme: 'mailto',
      path: email,
    );
    if (!await launchUrl(uri)) {
      return Future.value(false);
    }
    return Future.value(true);
  }
}
