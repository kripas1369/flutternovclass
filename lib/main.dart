import 'package:flutter/material.dart';

void main() {
  runApp(  MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: const Scaffold(
          body: const Center(
              child: const Text("this is my text",
                style:TextStyle(fontSize: 30,
                    fontWeight:FontWeight.bold,
                   color: Colors.red,
                  fontStyle: FontStyle.italic,
                ) ,),
          ),
        )
    );
  }
}

