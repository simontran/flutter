// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class AnimationDay02 extends StatefulWidget {
  const AnimationDay02({super.key});

  @override
  State<AnimationDay02> createState() => _AnimationDay02State();
}

class _AnimationDay02State extends State<AnimationDay02> {
  bool animation = true;
  bool showText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                FadeInDown(
                  animate: animation,
                  child: const Text(
                    'What is Lorem Ipsum?',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(children: [
              Flash(
                duration: const Duration(
                  milliseconds: 1000,
                ),
                infinite: true,
                child: const Icon(
                  Icons.dangerous,
                  color: Colors.red,
                  size: 30,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Expanded(
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              )
            ]),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: const Image(
                image: NetworkImage(
                  'https://brycen.com.vn/wp-content/uploads/2023/12/002.jpg',
                ),
                fit: BoxFit.cover,
              ),
              title: const Text(
                'Lorem Ipsum',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              trailing: Pulse(
                infinite: true,
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Pulse Button',
                    )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            StatefulBuilder(builder: (context, setState) {
              return Row(children: [
                Expanded(
                  child: FlipInY(
                    animate: showText,
                    child: Text(
                      'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      showText = !showText;
                    });
                  },
                  child: const Text(
                    'Open Text',
                  ),
                ),
              ]);
            }),
          ]),
        ),
      ),
    );
  }
}
