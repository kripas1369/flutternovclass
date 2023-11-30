import 'package:flutter/material.dart';
import 'package:flutternovclass/Constant/constColor.dart';
import 'package:flutternovclass/Screen/PrimaryScreen/SplaschScreen/Screen/splashScreen.dart';
import 'package:flutternovclass/Widgets/drawerScreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kbackgroundColor,
        body: Center(
          child: S_body(),
        )
    );
  }
}

