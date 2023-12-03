import 'package:flutter/material.dart';
import 'package:flutternovclass/Screen/PrimaryScreen/Widgets/primaryText.dart';

class RegisterTextfield extends StatelessWidget {
  const RegisterTextfield({super.key});

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
            CustomText(
              text: "Register Now",
            ),
            Spacer(),

          ],
        ),
      ],
    );
  }
}
