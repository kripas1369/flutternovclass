import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternovclass/Constant/images.dart';
import 'package:flutternovclass/Screen/PrimaryScreen/RegisterScreen/Widgets/registerTextfield.dart';
import 'package:flutternovclass/Screen/PrimaryScreen/Widgets/primaryText.dart';
import 'package:flutternovclass/Screen/PrimaryScreen/Widgets/sizeBox.dart';

class R_Body extends StatelessWidget {
  const  R_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // TopHeight(),
        Image.asset(AppImages.logo,height:180,),
        PCustomHeading(text: "Register",),
        TextSizeBox(),
        PCustomSubHeading(),
       RegisterTextfield(),
      ],
    );
  }
}
