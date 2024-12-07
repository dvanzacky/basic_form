import 'package:flutter/material.dart';

class AppbarMyWidget extends StatelessWidget {
  AppbarMyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Simple Code",
        ),
      ),
      body: const Center(
        child: Text('Hello Worlds'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          openForm(context); // Pass context here
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void openForm(BuildContext context) {
    // Navigate to a new form or page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NewFormPage()),
    );
  }
}

class NewFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Form"),
      ),
      body: const Center(
        child: Text("This is a new form page"),
      ),
    );
  }
}