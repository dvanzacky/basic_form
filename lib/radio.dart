import 'package:flutter/material.dart';

class RadiobuttonMyWidget extends StatefulWidget {
  const RadiobuttonMyWidget({super.key});

  @override
  _GenderSelectorState createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<RadiobuttonMyWidget> {
  // Initial value for the selected gender
  String? sex = 'male'; // Default value is 'male'

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            const Text('Gender:'),
            const SizedBox(width: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio<String>(
                  value: 'male',
                  groupValue: sex, // The currently selected value
                  onChanged: (String? val) {
                    setState(() {
                      if (val != null) {
                        sex = val; // Update the state when male is selected
                      }
                    });
                  },
                ),
                const Text('Male'),
              ],
            ),
            const SizedBox(width: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio<String>(
                  value: 'female',
                  groupValue: sex, // The currently selected value
                  onChanged: (String? val) {
                    setState(() {
                      if (val != null) {
                        sex = val; // Update the state when female is selected
                      }
                    });
                  },
                ),
                const Text('Female'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}