import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeWidgetLocation extends StatelessWidget {
  const HomeWidgetLocation({super.key, required this.location});

  final String location;

  @override
  Widget build(BuildContext context) {
    final dateformat = DateFormat('yyyy/MM/dd HH:mm');

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/icons/fluent_location-48-regular.png',
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 1,
            ),
            Text(
              location,
              style: const TextStyle(
                fontSize: 28,
                color: Color(
                  0xffFFFFFF,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 17,
        ),
        Text(
          dateformat.format(DateTime.now()),
          style: const TextStyle(fontSize: 28, color: Color(0xffFFFFFF)),
        ),
      ],
    );
  }
}
