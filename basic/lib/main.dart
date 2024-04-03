// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'page/part01/row_column.dart';
import 'page/part01/stack.dart';
import 'page/part01/static_user_interface.dart';
import 'page/part01/rich_text.dart';
import 'page/part02/day01_animation.dart';
import 'page/part02/day02_animation.dart';
import 'page/part02/day03_animation_hero.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // part 01 >>>
      // themeMode: ThemeMode.dark,
      // home: Scaffold(
      //   backgroundColor: Colors.black,
      //   // body: StaticUserInterface(),
      //   // body: RichTextWidget(),
      //   // body: RowColumnWidget(),
      //   // body: StackWidget(),
      //   body: TemplatePage(),
      // ),
      // part 02 >>>
      theme: ThemeData(
        fontFamily: 'Mochi',
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
          bodyMedium: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
      // home: const Day01Animation(),
      // home: const Day02Animation(),
      home: const Day03Animation(),
    );
  }
}
