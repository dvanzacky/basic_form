import 'package:flutter/material.dart';

class IconMyWidget extends StatelessWidget {
   IconMyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: const Column(
          children: [
            Icon(
              Icons.share,
              size: 32.0,
            ),
            Icon(
              Icons.favorite,
              size: 36.0,
              color: Color.fromARGB(255, 216, 135, 130),
            ),
          ],
        ),
      ),
    );
  }
}