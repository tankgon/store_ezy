import 'package:ez_store/flavors.dart';

class AppConfig {
  AppConfig._();

  static final IN_PRODUCTION = F.appFlavor == Flavor.PRODUCTION;
  static final IN_DEV = F.appFlavor == Flavor.DEVELOPMENT;
  // static final SHOW_LOG = !IN_PRODUCTION;
  static final SHOW_LOG = true;

  static const USE_OPERATION_VER = true;

  /// Server

  static const PLACE_API_KEY = 'AIzaSyDvZzE6vrS5HGX1FzlA1ODB2NvNHn7Gtc0';
  static final PLACE_DURATION_SECOND = IN_PRODUCTION ? 2 : 4;
}
