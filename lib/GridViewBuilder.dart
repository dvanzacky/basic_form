import 'package:flutter/material.dart';

class Gridviews extends StatelessWidget {
  const Gridviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2, // Jumlah kolom
          childAspectRatio: 185 / 243, // Rasio tinggi dan lebar
          mainAxisSpacing: 16, // Jarak antar baris
          crossAxisSpacing: 16, // Jarak antar kolom
          children: List.generate(
            6,
            (index) => Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20), 
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset.zero,
                    blurRadius: 15.0,
                  )
                ],
              ),
              // Menambahkan widget untuk konten dalam grid
              child: Center(
                child: Text(
                  'Item ${index + 1}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}