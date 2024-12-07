import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RowMyWidget extends StatelessWidget {
  const RowMyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Container(
          child:Card(
          child:Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween, 
             children: [
            Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: IconButton(
              onPressed:() {},
              icon: const Icon(Icons.arrow_back_ios)
            ),
          ),
          const Text(
            "Detail",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.normal,
            ),

          ),
          IconButton(
            onPressed:() {} ,
            icon: const Icon(
              Icons.share,
              size: 32.0,
            ),

              ),
        ]),
      ),
        ),
      ),
    );
  }
}