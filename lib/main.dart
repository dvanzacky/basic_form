import 'package:flutter/material.dart';
import 'package:flutter_form/appbar.dart';
import 'package:flutter_form/AspectRatio.dart';
import 'package:flutter_form/button.dart';
import 'package:flutter_form/center.dart';
import 'package:flutter_form/checkbox.dart';
import 'package:flutter_form/circleavatar.dart';
import 'package:flutter_form/column.dart';
import 'package:flutter_form/containers.dart';
import 'package:flutter_form/expended.dart';
import 'package:flutter_form/form.dart';
import 'package:flutter_form/GridViewBuilder.dart';
import 'package:flutter_form/icon.dart';
import 'package:flutter_form/image.dart';
import 'package:flutter_form/ListView.dart';
import 'package:flutter_form/padding.dart';
import 'package:flutter_form/row.dart';
import 'package:flutter_form/radio.dart';
import 'package:flutter_form/SizedBox.dart';
import 'package:flutter_form/stack.dart';
import 'package:flutter_form/switch.dart';
import 'package:flutter_form/text.dart';
import 'package:flutter_form/TextFilend.dart';
import 'package:flutter_form/Wrap.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Wraps (),  
    );  
  }
}