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
        return 'BIREAL Dev';
      case Flavor.STAGING:
        return 'BIREAL Stag';
      case Flavor.PRODUCTION:
        return 'BIREAL';
      default:
        return 'BIREAL';
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
        return 'https://api.dev.bireal.vn/v1/';
      case Flavor.STAGING:
        return 'https://api.stag.bireal.vn/v1/';
      case Flavor.PRODUCTION:
        return 'https://api.bireal.vn/v1/';
      default:
        return 'https://api.bireal.vn/v1/';
    }
  }

  static String get HIVE_STORAGE_VER {
    return 'HIVE_VER_1';
  }

  static String get DEVICE_TYPE {
    return 'mobile';
  }
}
