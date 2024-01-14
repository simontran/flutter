import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Stack(
          //   // alignment: AlignmentDirectional.center,
          //   children: [
          //     Positioned(
          //       top: 100,
          //       // bottom: 0,
          //       left: 100,
          //       // right: 0,
          //       child: Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.red,
          //       ),
          //     ),
          //     Positioned(
          //       top: 110,
          //       // bottom: 0,
          //       left: 110,
          //       // right: 0,
          //       child: Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.green,
          //       ),
          //     ),
          //     Positioned(
          //       top: 120,
          //       // bottom: 0,
          //       left: 120,
          //       // right: 0,
          //       child: Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.blue,
          //       ),
          //     ),
          //   ],
          // ),
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.red,
              ),
              Align(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
