// ignore_for_file: non_constant_identifier_names, constant_identifier_names

const link_asset = 'assets/images/weathers/';

class AssetCustom {
  static String getLinkImg(String name) =>
      '$link_asset${name.replaceAll(' ', '').toLowerCase()}.png';
}

class MyKey {
  static String api_token = 'c3c38fa4c19ee8d3452ded5c495e5132';
  static String api_lat = '16.4625';
  static String api_lon = '107.5888';
  static String api_units = 'metric';
}
