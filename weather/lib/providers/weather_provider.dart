import 'package:flutter/material.dart';
import '../models/weather.dart';
import '../reponsitories/api_reponsitory.dart';

class WeatherProvider extends ChangeNotifier {
  Future<Data> getWeatherCurrent() async {
    // call api
    Data result = await ApiReponsitory.callApiGetWeather();
    return result;
  }
}
