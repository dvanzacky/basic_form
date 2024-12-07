import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PaddingWidget extends StatelessWidget {
  PaddingWidget({super.key});
  final List<String> categories = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 500,
        width: 300,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(border: Border.all()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                top: 300,
                bottom: 40,
              ),
              child: Text(
                'Categories',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}