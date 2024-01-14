import 'package:flutter/material.dart';
import 'page/part01/row_column.dart';
import 'page/part01/static_user_interface.dart';
import 'page/part01/rich_text.dart';

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
      // themeMode: ThemeMode.dark,
      home: Scaffold(
        backgroundColor: Colors.black,
        // body: StaticUserInterface(),
        // body: RichTextWidget(),
        body: RowColumnWidget(),
      ),
    );
  }
}
