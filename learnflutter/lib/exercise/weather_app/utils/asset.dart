class WeatherAsset {
  static const apiKey = '5d57694a50c45b61e549a8475a14fe3a';
}

class AssetHelper {
  static const assetFilePath = 'assets/images/weathers/';

  static String getAssetFilePath(String url) {
    return '$assetFilePath${url.replaceAll(' ', '').toLowerCase()}.png';
  }
}