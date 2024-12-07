import 'package:flutter/material.dart';

class CircleAvatarMyWidget extends StatelessWidget {
  CircleAvatarMyWidget({super.key});

  final List<Color> colors = [Colors.red, Colors.green, Colors.blue]; // Example color list

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                "https://i.ibb.co/PGv8ZzG/me.jpg",
              ),
            ),
            const SizedBox(height: 20), // Add space between avatars
            Row(
              children: [
                ...List.generate(
                  colors.length,
                  (index) => CircleAvatar(
                    radius: 40,
                    backgroundColor: colors[index], // Corrected access using square brackets
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}