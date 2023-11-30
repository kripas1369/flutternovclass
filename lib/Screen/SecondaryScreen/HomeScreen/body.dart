import 'package:flutter/material.dart';
import 'package:flutternovclass/Constant/constColor.dart';
import 'package:flutternovclass/Screen/SecondaryScreen/HomeScreen/Screen/homeScreen.dart';
import 'package:flutternovclass/Widgets/drawerScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: kbackgroundColor,
      backgroundColor: Colors.red,
        ///Drawer Section Start
        drawer: Drawers(),
        ///Drawer Section End
        ///Task one Start
        // appBar: AppbarWidgets(),
        ///Task one End
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.person),
        ),
        body: SingleChildScrollView(
            child: Body())
    );
  }
}

