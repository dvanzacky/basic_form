import 'package:flutter/material.dart';

class SwitchMyWidget extends StatefulWidget {
  const SwitchMyWidget({super.key});

  @override
  _SwitchMyWidgetState createState() => _SwitchMyWidgetState();
}

class _SwitchMyWidgetState extends State<SwitchMyWidget> {
  // Initial state of the switch
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child : Row(
          children: [
            const Text('Connect Instagram'),
            const SizedBox(
              width: 8,
            ),
            Switch(
              value: isOn,
              onChanged: (bool val){
                  setState((){
                    isOn = val;
                  });
              },
            ),
          ],
        ),
      ),
    );
  }
}