import 'package:flutter/material.dart';
import 'package:weather/apps/utils/const.dart';

class HomeWidgetsWeather extends StatelessWidget {
  const HomeWidgetsWeather({super.key, required this.nameIcon});

  final String nameIcon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width / 1.5,
      padding: const EdgeInsets.all(40),
      child: Image.asset(
        // 'assets/images/weathers/$nameIcon.png',
        AssetCustom.getLinkImg(nameIcon),
        fit: BoxFit.cover,
      ),
    );
  }
}
