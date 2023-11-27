import 'package:flutter/material.dart';
import 'package:flutternovclass/Screen/SecondaryScreen/HomeScreen/Screen/homeScreen.dart';
import 'package:flutternovclass/Screen/SecondaryScreen/HomeScreen/body.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomeScreen()
    );
  }
}
