// ignore_for_file: avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/weather.dart';
import '../../providers/weather_provider.dart';
import 'widgets/home_widget_location.dart';
import 'widgets/home_widget_temperature.dart';
import 'widgets/home_widget_weather_detail.dart';
import 'widgets/home_widget_weather_icon.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    context.read<WeatherProvider>().getWeatherCurrent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff1D6CFA),
              Color(0xff19D2FE),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: FutureBuilder(
          future: context.read<WeatherProvider>().getWeatherCurrent(),
          initialData: null,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (!snapshot.hasData) {
              return Container(
                child: const Text('no data'),
              );
            }

            Data data = snapshot.data as Data;
            // print(data.weather[0].main);

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HomeWidgetsWeather(
                  nameIcon: data.weather[0].main,
                ),
                HomeWidgetTempurature(
                  temp: data.main.temp,
                ),
                HomeWidgetLocation(
                  location: data.name,
                ),
                const SizedBox(
                  height: 40,
                ),
                HomeWidgetWeatherDetail(
                  wind: data.wind.speed,
                  humidity: data.main.humidity,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
