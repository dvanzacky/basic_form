import 'package:flutter/material.dart';

class TextFieldMyWidget extends StatelessWidget {
  // Declare the controller as a final variable
  final TextEditingController textController = TextEditingController();

  TextFieldMyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          maxLength: 20,
          controller: textController,
          decoration: const InputDecoration(
            labelText: 'Name',
            labelStyle: TextStyle(
              color: Colors.blueGrey,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey),
            ),
            helperText: "What's Your Name?",
          ),
          onChanged: (value) {
            // This is where you handle input changes, if needed
            print("Name: $value");
          },
        ),
      ),
    );
  }
}