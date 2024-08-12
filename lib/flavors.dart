enum Flavor {
  APPLE,
  BANANA,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.APPLE:
        return 'Apple App';
      case Flavor.BANANA:
        return 'Banana App';
      default:
        return 'title';
    }
  }

  static String get apiUrl {
    switch (appFlavor) {
      case Flavor.APPLE:
        return 'http://apple/api';
      case Flavor.BANANA:
        return 'http://banana/api';
      default:
        throw UnimplementedError();
    }
  }
}
