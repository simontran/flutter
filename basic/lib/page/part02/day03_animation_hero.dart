// ignore_for_file: depend_on_referenced_packages, unused_import
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'day03_animation_hero_item.dart';

class Day03Animation extends StatelessWidget {
  const Day03Animation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            Text(
              'Animation Hero',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                children: List.generate(
                  10,
                  (index) => InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ItemPage(
                              color: Colors.primaries[index],
                              index: index,
                            );
                          },
                        ),
                      );
                    },
                    child: Hero(
                      tag: "tagHero-$index",
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.primaries[index],
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(0, 2),
                                blurRadius: 5.0,
                                // spreadRadius: BorderSide.strokeAlignOutside,
                                // blurStyle: BlurStyle.outer,
                              ),
                            ]),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
