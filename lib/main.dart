import 'package:flutter/material.dart';
import 'package:flutternovclass/Screen/FlutterWidgets/Listtileandimage.dart';
import 'package:flutternovclass/Screen/PrimaryScreen/SplaschScreen/body.dart';
import 'package:flutternovclass/Widgets/defaultButton.dart';
import 'package:flutternovclass/product.dart';
import 'package:flutternovclass/test.dart';

import 'Screen/FlutterWidgets/flutter_button.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductListPage(),
    );
  }
}
