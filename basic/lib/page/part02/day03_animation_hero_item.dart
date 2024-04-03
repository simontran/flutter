import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key, required this.color, required this.index});
  final Color color;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Hero(
          tag: "tagHero-$index",
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: color,
          ),
        ),
      ),
    );
  }
}
