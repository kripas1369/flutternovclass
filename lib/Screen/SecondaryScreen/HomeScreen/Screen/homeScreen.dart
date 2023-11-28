import 'package:flutter/material.dart';
import 'package:flutternovclass/Constant/constColor.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    ///Day 5 to
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 100,),
        Container(
          height: 200,
          color: Colors.red,
          child:Row(
            mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              MaterialButton(onPressed: (){},child: Text("button 1"),color: Colors.blue,),
              MaterialButton(onPressed: (){},child: Text("button 2"),color: Colors.greenAccent,),
              MaterialButton(onPressed: (){},child: Text("button 3"),color: Colors.pink,),
          ],) ,
        ),
        SizedBox(height: 20,),
       ///TEXT WIDGETS
        Text(
          "Flutter is an open-source UI software development kit "
            "created by Google. It is used to develop cross platform "
            "applications from a single codebase for any web browser, Fuchsia,"
            " Android, iOS, Linux, macOS, and Windows. First described in 2015,"
            " Flutter was released in May 2017.",
          textScaleFactor: 1,
          maxLines:3,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style:TextStyle(
            fontSize:25,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'Times',
            letterSpacing: 2,
            wordSpacing:8,
            color: ktextColor,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.wavy,
            decorationThickness: 1,
            shadows:[
              Shadow(
                color: Colors.black,
                offset: Offset(6,10),
                blurRadius: 10,
              )
            ]
          ) ,
        ),
        SizedBox(height: 50,),
        ///TEXT WIDGETS END
        ///STACK WIDGETS START
        Container(
          height: 300,
          width: 500,
          color: Colors.blue,
          child:Stack(
            textDirection: TextDirection.rtl,
            ///TASK TO DO
            // fit: StackFit.expand,
            // clipBehavior: Clip.antiAlias,
            ///TASK TO END
            children: [
                Container(height: 300,width: 300,color: Colors.greenAccent,),
                Positioned(
                    top: 83,
                    left: 70,
                    // bottom: 30,
                    child: Container(height: 250,width: 250,color: Colors.pink,))  ,
                Container(height: 200,width: 200,color: Colors.black,)
            ],
          ),
        ),
        SizedBox(height: 50,),
        ///STACK WIDGETS END
     
      ],
    );

    ///Day 1 to Day 5
    // return Column(
    //   // mainAxisAlignment:MainAxisAlignment.center,
    //   // crossAxisAlignment: CrossAxisAlignment.end,
    //
    //   children: [
    //     SizedBox(height: 80,),
    //     Card(
    //       child: Container(
    //         height: 400,
    //         width: 800,
    //         padding: EdgeInsets.all(20),
    //         // margin: EdgeInsets.all(70),
    //         alignment: Alignment.center,
    //         // transform: Matrix4.rotationZ(0.3),
    //         decoration: BoxDecoration(
    //           // color: Colors.blue,
    //           border: Border.all(
    //               color: Colors.black,
    //               width:4
    //           ),
    //           borderRadius: BorderRadius.circular(20),
    //           // boxShadow: [
    //           //   BoxShadow(
    //           //       color: Colors.black,
    //           //       offset: Offset(
    //           //         10.2,
    //           //         20,
    //           //       ),
    //           //       blurRadius: 20,
    //           //       spreadRadius: 20
    //           //   ),
    //           //   BoxShadow(
    //           //     color: Colors.red,
    //           //     offset: Offset(
    //           //       5.2,
    //           //       10,
    //           //     ),
    //           //     blurRadius: 10,
    //           //     spreadRadius:5,),
    //           // ]
    //         ),
    //
    //         child: Row(
    //           children: [
    //             Container(height: 200,width: 200,color: Colors.red,),
    //             Container(height: 200,width: 130,color: Colors.green,
    //             child: Column(
    //               // mainAxisAlignment: MainAxisAlignment.values,
    //               children: [
    //               CircleAvatar(),
    //               MaterialButton(onPressed: (){},color: Colors.deepOrange,),
    //               MaterialButton(onPressed: (){},color: Colors.yellow,)
    //             ],),
    //             ),
    //           ],)
    //
    //
    //       ),
    //     ),
    //     Card(
    //       child: Container(
    //         height: 200,
    //         width: 200,
    //         padding: EdgeInsets.all(20),
    //         // margin: EdgeInsets.all(70),
    //         alignment: Alignment.center,
    //         // transform: Matrix4.rotationZ(0.3),
    //         decoration: BoxDecoration(
    //           color: Colors.blue,
    //           border: Border.all(
    //               color: Colors.black,
    //               width:4
    //           ),
    //           borderRadius: BorderRadius.circular(20),
    //           // boxShadow: [
    //           //   BoxShadow(
    //           //       color: Colors.black,
    //           //       offset: Offset(
    //           //         10.2,
    //           //         20,
    //           //       ),
    //           //       blurRadius: 20,
    //           //       spreadRadius: 20
    //           //   ),
    //           //   BoxShadow(
    //           //     color: Colors.red,
    //           //     offset: Offset(
    //           //       5.2,
    //           //       10,
    //           //     ),
    //           //     blurRadius: 10,
    //           //     spreadRadius:5,),
    //           // ]
    //         ),
    //         child: Text("this is our cute container vai"),
    //
    //
    //       ),
    //     ),
    //
    //
    //   ],
    //
    // );
  }
}
