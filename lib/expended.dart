import 'package:flutter/material.dart';

class ExpandedMyWidget extends StatelessWidget {
   ExpandedMyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: const [
            Icon(Icons.arrow_back_ios),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                  child: Text(
                    'List Checklist',
                    style: TextStyle(fontSize: 16),
                  ),
              ),
            ),
          Icon(
            Icons.check,
            color: Colors.blue,
          ),
          ],
        ),
      ),
    );
  }
}