import 'package:flutter/material.dart';

class HomeWidgetTempurature extends StatelessWidget {
  const HomeWidgetTempurature({super.key, required this.temp});

  final num temp;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          temp.round().toString(),
          style: const TextStyle(
              fontSize: 100,
              fontWeight: FontWeight.bold,
              color: Color(0xffFFFFFF)),
        ),
        const Text(
          '0',
          style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Color(0xffFFFFFF)),
        ),
      ],
    );
  }
}
