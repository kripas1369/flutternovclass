import 'package:flutter/material.dart';
import 'package:flutternovclass/Screen/FlutterWidgets/flutter_button.dart';
import 'package:flutternovclass/Screen/SecondaryScreen/HomeScreen/Screen/homeScreen.dart';
import 'package:flutternovclass/Screen/SecondaryScreen/HomeScreen/body.dart';
import 'package:flutternovclass/Screen/FlutterWidgets/Listtileandimage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: HomeScreen()
      // home: TestScreen(),
      home: FlutterButtons()
    );
  }
}
