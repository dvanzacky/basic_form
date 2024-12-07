import 'package:flutter/material.dart';

class ImageMyWidget extends StatelessWidget {
  const ImageMyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.asset('Assets/Images/BG1.png'),
            ),
          ],
        ),
      ),
    );
  }
}