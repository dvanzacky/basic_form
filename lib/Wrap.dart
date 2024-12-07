import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Wraps extends StatelessWidget {
Wraps({super.key});
  final List<String> categories = <String>[];


     final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.purple,
    Colors.yellow,
  ];
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:Wrap(
          spacing: 20,
          runSpacing:10,
          children :colors.map((color){
            return InkWell(
              onTap: () {},
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  border: Border.all(width: 3,color: Colors.grey),
                  color:color,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset:  Offset.zero,
                      blurRadius: 15,
                    )
                  ]),

                ),

            );
          }).toList(),
        ),
      ),
    );
  }
}