import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StackMyWidget extends StatelessWidget {
  StackMyWidget({super.key});
  final List<String> categories = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          clipBehavior: Clip.none,
          children: const[
            Icon(
              Icons.shopping_cart,
              size: 50,
            ),
            Positioned(
              top: -4.0,
              right: -4.0,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Color.fromARGB(255, 48, 14, 12),
                child: Text(
                  '3',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

            )
          ],
        ),
      ),
    );
  }
}