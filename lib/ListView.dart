import 'package:flutter/material.dart';

class ListViews extends StatelessWidget {
  ListViews({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> categories = [
      'All',
      'Living Room',
      'Bed Room',
      'Dining Room',
      'Kitchen'
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Binar - ListView'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Tambahkan padding untuk sisi kiri dan kanan
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ListView Horizontal
            SizedBox(
              height: 50, // Tinggi ListView horizontal
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  categories.length,
                  (index) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                    ),
                    child: Center(
                      child: Text(
                        categories[index],
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16), // Jarak antar ListView

            // ListView Vertikal
            Expanded(
              child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                    ),
                    child: Text(
                      categories[index],
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}