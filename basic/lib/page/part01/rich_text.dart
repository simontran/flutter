import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: const TextSpan(
              text: 'By tapping "Sign Up" you accept our ',
              children: [
                TextSpan(
                  text: ' terms',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                TextSpan(
                  text: ' and',
                  style: TextStyle(),
                ),
                TextSpan(
                  text: ' condition',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: const TextSpan(
              text: 'Already have account? ',
              children: [
                WidgetSpan(
                  child: Icon(
                    Icons.remove_red_eye_sharp,
                    color: Colors.blue,
                  ),
                ),
                TextSpan(
                  text: ' SIGN IN',
                  style: TextStyle(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
