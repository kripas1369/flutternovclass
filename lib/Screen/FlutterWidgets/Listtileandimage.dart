import 'package:flutter/material.dart';
import 'package:flutternovclass/Constant/images.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,),
      body: Column(children: [
        // Image.asset("assets/images/flutter.png",height: 100,),
        Image.asset(AppImages.flutterlogo),
        ListTile(
          iconColor: Colors.red,
          focusColor: Colors.red,
          enabled: true,
          // textColor: Colors.blue,
          leading: Container(
            height: 100,
            width: 50,
            color: Colors.greenAccent,),
          title: Text("Kripas Khatiwada",style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text("+977 9834534534asdfasdfhjakjshdfjkahskas,dmfhkjashdfkjhakjsdhfkjashjfahkjhakjsdhajshdkjfhaksjhdfkjahsdkjfhkajsdhjkfhaskjdhfkjasdhfkjbakjsdbgkjadsbgjkbadskjgbkjajdhfkjahsnakjshdfkjhaksjhdfkjhajkshdfjhadhfkjfakshdfka"),
          trailing: Icon(Icons.person),
          onTap: (){},
        ),
        Divider(
          indent:80 ,
          endIndent:10 ,
          color: Colors.black,
          thickness: 2,
        ),
        ListTile(
          iconColor: Colors.red,
          focusColor: Colors.red,
          enabled: true,
          // textColor: Colors.blue,
          leading: Container(
            height: 100,
            width: 50,
            color: Colors.greenAccent,),
          title: Text("Kripas Khatiwada",style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text("+977 9834534534asdfasdfhjakjshdfjkahskas,dmfhkjashdfkjhakjsdhfkjashjfahkjhakjsdhajshdkjfhaksjhdfkjahsdkjfhkajsdhjkfhaskjdhfkjasdhfkjbakjsdbgkjadsbgjkbadskjgbkjajdhfkjahsnakjshdfkjhaksjhdfkjhajkshdfjhadhfkjfakshdfka"),
          trailing: Icon(Icons.person),
          onTap: (){},
        ),
        Divider(
          indent:80 ,
          endIndent:10 ,
          color: Colors.black,
          thickness: 2,
        ),

        Card(
          child: SizedBox(
            width: 800,
            height: 400,
            child:Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  // backgroundImage: NetworkImage(
                  //   "https://media.licdn.com/dms/image/D4D03AQFQZy0RBSZJNQ/profile-displayphoto-shrink_400_400/0/1698301584532?e=2147483647&v=beta&t=1p_qs4GiH9hGq4WTCLzPPRd7qbNLYWWiphprVB5-fKQ"
                  // ),
                  backgroundImage: AssetImage(AppImages.flutterlogo),
                ),
              ],
            ) ,
          ),

        ),

      ],),
    );
  }
}
