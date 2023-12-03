

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutternovclass/Constant/images.dart';
import 'package:flutternovclass/Screen/PrimaryScreen/LoginScreen/body.dart';
import 'package:flutternovclass/Screen/SecondaryScreen/HomeScreen/body.dart';

class S_body extends StatefulWidget {
  const S_body({super.key});
  @override
  State<S_body> createState() => _S_bodyState();
}

class _S_bodyState extends State<S_body> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4),
          (){Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Image.asset(AppImages.logo),
        ),
        CircularProgressIndicator()
      ],
    );
  }
}
