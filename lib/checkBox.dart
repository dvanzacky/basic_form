import 'package:flutter/material.dart';

class CheckboxMyWidget extends StatefulWidget {
  const CheckboxMyWidget({super.key});

  @override
  _CheckboxMyWidgetState createState() => _CheckboxMyWidgetState();
}

class _CheckboxMyWidgetState extends State<CheckboxMyWidget> {
  // State to manage whether the checkbox is checked or not
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Checkbox(
              value: isChecked, // The current state of the checkbox
              activeColor: Colors.blue,
              onChanged: (bool? val) {
                setState(() {
                  if (val != null) {
                    isChecked = val; // Update the state when the checkbox is toggled
                  }
                });
              },
            ),
            const SizedBox(width: 4),
            const Text(
              'Agree to Terms & Conditions',
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}