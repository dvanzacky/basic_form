import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyWidget extends StatelessWidget {
   MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Size",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4.0),
            Text(
              "Height 120 cm",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
                fontWeight: FontWeight.normal
              ),
            ),
            SizedBox(height: 2.0),
            Text(
              "Width 80 cm",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
                fontWeight: FontWeight.normal
              ),
            ),
          ],
        )
      ),
    );
  }
}