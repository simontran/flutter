import 'package:dio/dio.dart';
import '../apps/utils/const.dart';
import '../models/weather.dart';

class ApiReponsitory {
  static Future<Data> callApiGetWeather() async {
    try {
      final dio = Dio();
      final res = await dio.get(
          'https://api.openweathermap.org/data/2.5/weather?lat=${MyKey.api_lat}&lon=${MyKey.api_lon}&units=${MyKey.api_units}&appid=${MyKey.api_token}');
      final data = res.data;
      Data result = Data.fromMap(data);
      return result;
    } catch (e) {
      rethrow;
      // print(e);
    }
  }
}
