import 'package:flutter/material.dart';

class HomeWidgetWeatherDetail extends StatelessWidget {
  const HomeWidgetWeatherDetail(
      {super.key, required this.wind, required this.humidity});

  final num wind;
  final num humidity;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/icons/ph_wind.png',
              fit: BoxFit.cover,
            ),
            Text(
              '${wind}km/h',
              style: const TextStyle(fontSize: 20, color: Color(0xffFFFFFF)),
            ),
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/icons/humidity.png',
              fit: BoxFit.cover,
            ),
            Text(
              '$humidity%',
              style: const TextStyle(fontSize: 20, color: Color(0xffFFFFFF)),
            ),
          ],
        ),
      ],
    );
  }
}
