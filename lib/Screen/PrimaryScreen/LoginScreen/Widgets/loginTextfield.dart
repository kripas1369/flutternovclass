import 'package:flutter/material.dart';
import 'package:flutternovclass/Screen/PrimaryScreen/RegisterScreen/body.dart';
import 'package:flutternovclass/Screen/PrimaryScreen/Widgets/primaryText.dart';

class LoginTextfield extends StatelessWidget {
  const LoginTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        TextFormField(),
        TextFormField(),
      Row(
      children: [
        Spacer(),
        MaterialButton(
        color: Colors.blue,
        onPressed: (){},child: Text("Login"),),
        Spacer(),
        CustomText(text: "Forgot Password",),
        Spacer(),

      ],
    ),
        InkWell(
          onTap: (){Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RegisterScreen()),
          );},
          child: CustomText(
            text: "Register Now",
                ),
        ),


      ],
    );
  }
}
