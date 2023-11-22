import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
           ///Drawer Section Start
           drawer: Drawer(

        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue
              ),
                child: Text("this is my drawer header")
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.blue,),
              trailing: Icon(Icons.ads_click),
              title:Text("Kripas Khatiwada"),
              subtitle:Text("92342342342"),
              onTap: (){},
            ), ListTile(
              leading: CircleAvatar(backgroundColor: Colors.blue,),
              trailing: Icon(Icons.ads_click),
              title:Text("Kripas Khatiwada"),
              subtitle:Text("92342342342"),
              onTap: (){},
            ), ListTile(
              leading: CircleAvatar(backgroundColor: Colors.blue,),
              trailing: Icon(Icons.ads_click),
              title:Text("Kripas Khatiwada"),
              subtitle:Text("92342342342"),
              onTap: (){},
            ),
          ],

        )
      ),
           ///Drawer Section End
            appBar: AppBar(
        elevation: 7.2,
        // toolbarHeight: 100,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        backgroundColor: Colors.red,
        actions: [
          Builder(
              builder: (BuildContext context){
                return IconButton(
                    onPressed: (){
                      Scaffold.of(context).openDrawer();
                    },
                    icon: Icon(Icons.menu));
              })

          // IconButton(onPressed: () {}, icon: Icon(Icons.notification_add)),
          // IconButton(onPressed: () {}, icon: Icon(Icons.person))
        ],
        title: Text(
          "this is my title",
          style: TextStyle(color: Colors.white),
        ),

        leading: Text("")
      ),
         floatingActionButton: FloatingActionButton(
         onPressed: () {},
         child: Icon(Icons.person),
      ),


         body: Center(
           child: Container(
             height: 200,
             width: MediaQuery.of(context).size.width,
             padding: EdgeInsets.all(20),
             margin: EdgeInsets.all(20),
             alignment: Alignment.center,
             transform: Matrix4.rotationZ(0.3),
             decoration: BoxDecoration(
                 color: Colors.blue,
                 border: Border.all(
                 color: Colors.black,
                     width:4
               ),
               borderRadius: BorderRadius.circular(20),
               boxShadow: [
                 BoxShadow(
                   color: Colors.black,
                   offset: Offset(
                     10.2,
                     20,
                   ),
                   blurRadius: 20,
                   spreadRadius: 20
                 ),
                 BoxShadow(
                     color: Colors.red,
                     offset: Offset(
                       5.2,
                       10,
                     ),
                     blurRadius: 10,
                     spreadRadius:5,),

               ]

               
             ),
             
             child: Text("this is our cute container vai"),


           ),
         )
    ));
  }
}
