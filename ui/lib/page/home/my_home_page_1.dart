import 'package:flutter/material.dart';

class MyHomePage1 extends StatelessWidget {
  const MyHomePage1({super.key});
  final String name = 'Flutter';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Welcome to $name!',
        textAlign: TextAlign.center,
        maxLines: 2,
        style: TextStyle(
          fontSize: 40,
          // color: Colors.amber,
          fontStyle: FontStyle.normal,
          letterSpacing: 10,
          shadows: const [
            Shadow(
              color: Colors.red,
              blurRadius: 10.0,
              offset: Offset(2, 2),
            ),
          ],
          foreground: Paint()
            ..shader = const LinearGradient(
              colors: [
                Colors.red,
                Colors.blue,
                Colors.green,
              ],
            ).createShader(const Rect.fromLTRB(0.0, 0.0, 300.0, 20.0)),
        ),
      ),
    );
  }
}
