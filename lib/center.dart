import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Centerwidget extends StatelessWidget {
  Centerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child : 
        Center(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              shadowColor: 
                Colors.grey[20],
              elevation: 5.0, 
            ),
            child: Text(
              "Add To Cart".toUpperCase(),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white
              ),
            ),
          ),
        ),
      ),
    );
  }
}