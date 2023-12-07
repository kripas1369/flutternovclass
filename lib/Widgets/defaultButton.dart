import 'package:flutter/material.dart';
import 'package:flutternovclass/Constant/constColor.dart';
import 'package:hexcolor/hexcolor.dart';
class DefaultButton extends StatelessWidget {
  const DefaultButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: (){
      //
      // },
      child: Container(
            decoration: BoxDecoration(
              gradient:LinearGradient(
                begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors:buttonColors,
              )
            ),
            width:MediaQuery.of(context).size.width*0.89,
            height: 60,
            child: Center(child: Text("Login")),

      ),
    );

  }
}
