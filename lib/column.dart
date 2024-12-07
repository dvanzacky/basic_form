import 'package:flutter/material.dart';

class Columns extends StatelessWidget {
  const Columns({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Kursi duduk',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Rp 350.000',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 255, 0, 0),
              fontWeight: FontWeight.w400,
              letterSpacing: 1,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Kursi Terbang',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Rp 150.000',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 0, 187, 255),
              fontWeight: FontWeight.w400,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}