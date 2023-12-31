import 'package:flutter/material.dart';

import 'page/home/my_home_page_1.dart';
import 'page/home/my_home_page_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage2(),
    );
  }
}
