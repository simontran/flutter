import 'package:flutter/material.dart';

class StaticUserInterface extends StatelessWidget {
  const StaticUserInterface({super.key});
  final String name = 'Tu';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello $name! Welcome to Flutter.',
        style: TextStyle(
          fontSize: 30,
          fontStyle: FontStyle.italic,
          // color: Colors.amber,
          wordSpacing: 10,
          shadows: const [
            Shadow(
              color: Colors.grey,
              offset: Offset(2, 2),
              blurRadius: 5.0,
            ),
          ],
          foreground: Paint()
            ..shader = const LinearGradient(
              colors: [
                Colors.red,
                Colors.green,
                Colors.blue,
              ],
            ).createShader(const Rect.fromLTWH(0, 0, 450, 30)),
        ),
        textAlign: TextAlign.center,
        maxLines: 2,
      ),
    );
  }
}
