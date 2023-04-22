enum Flavor {
  DEVELOPMENT,
  STAGING,
  PRODUCTION,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.DEVELOPMENT:
        return 'MulStore Dev';
      case Flavor.STAGING:
        return 'MulStore Stag';
      case Flavor.PRODUCTION:
        return 'MulStore';
      default:
        return 'MulStore';
    }
  }

  static String get SOCKET_URL {
    switch (appFlavor) {
      case Flavor.DEVELOPMENT:
        return 'wss://api.dev.bireal.vn';
      case Flavor.STAGING:
        return 'wss://api.stag.bireal.vn';
      case Flavor.PRODUCTION:
        return 'wss://api.bireal.vn';
      default:
        return 'wss://api.bireal.vn';
    }
  }

  static String get SERVER_URL {
    switch (appFlavor) {
      case Flavor.DEVELOPMENT:
        return 'https://devapi.mulstore.smatez.com/';
      case Flavor.STAGING:
        return 'https://devapi.mulstore.smatez.com/';
      case Flavor.PRODUCTION:
        return 'https://devapi.mulstore.smatez.com/';
      default:
        return 'https://devapi.mulstore.smatez.com/';
    }
  }

  static String get HIVE_STORAGE_VER {
    return 'HIVE_VER_1';
  }

  static String get DEVICE_TYPE {
    return 'mobile';
  }
}
