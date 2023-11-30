import 'package:flutter/material.dart';

class FlutterButtons extends StatelessWidget {
  const FlutterButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    void textButtonOnPress () {
      ///task
      // scaffoldKey.currentState!.showSnackBar(
      //   SnackBar(
      //     content: Text("text button"),
      //     duration: Duration(seconds: 4),
      //   ),
      // );
      ///task
      ///task
      /// for top
      final snackBar = SnackBar(
          content: Text("you clicked the text button"),
          duration: Duration(seconds: 6),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      // print("clicked");
    }
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,title: Text("flutter buttons"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextButton(
              onPressed:textButtonOnPress,
              child: Text("Text Button"),
            ),
            OutlinedButton(onPressed: textButtonOnPress,
                child:Text("outline Button"),),
            // ElevatedButton(
            //     flutter material button decoration
            //   /// task
            //  // style;
            //   ),
            //
            // child: Text("Elevated Button")),

            MaterialButton(
              color: Colors.red,
              minWidth: 200,
              height: 100,
              onPressed: (){},
              ///task
              // shape: ShapeBorder(),
              elevation: 10,
              child: Text("Material Button"),
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.snowmobile))
          ],
        ),
      ),
    );
  }
}
