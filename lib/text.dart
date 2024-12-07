import 'package:flutter/material.dart';

class TextMyWidget extends StatelessWidget {
   TextMyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: const[
            Text(
              'Discover the most modern furniture',
              style: TextStyle(
                color: Color.fromARGB(255, 161, 63, 63),
                fontSize: 22.0,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}