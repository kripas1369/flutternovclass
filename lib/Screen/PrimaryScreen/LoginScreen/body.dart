import 'package:flutter/material.dart';
import 'package:flutternovclass/Constant/constColor.dart';

import 'Screen/loginScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kbackgroundColor,
        body: Padding(
          padding: const EdgeInsets.only(left: 19, right: 19),
          child: SingleChildScrollView(child: L_Body()),
        ));
  }
}
