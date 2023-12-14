import 'package:flutter/material.dart';


///Example 1
//
// class Test extends StatefulWidget {
//   const Test({super.key});
//
//   @override
//   State<Test> createState() => _TestState();
// }
//
// class _TestState extends State<Test> {
//   int counter = 0;
//   void incrementCounter(){
//     setState(() {
//       counter++;
//       counter = 1+counter;
//       print(counter);
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("flutter app"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//           Text("Counter",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
//             Text("$counter",style: TextStyle(fontSize: 20),)
//         ],),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: (){
//           incrementCounter();
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }


///Example 2

// class Person{
//   String name;
//   String role;
//   int salary;
//   String number;
//   String img;
//   Person({required this.name,
//     required this.number,
//     required this.img,
//     required this.role,
//     required this.salary});
// }
//
// class CustomCard extends StatelessWidget {
//   final Person person;
//   CustomCard({required this.person});
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: ListTile(
//         title: Text("${person.name}"),
//         subtitle: Text("${person.role}"),
//         leading: CircleAvatar(backgroundImage: NetworkImage(person.img),),
//         trailing:     Text("${person.salary}"),
//           // Text("${person.number}")
//         onTap: (){},
//       ),
//     );
//   }
// }
//
// class Test extends StatefulWidget {
//   @override
//   State<Test> createState() => _TestState();
// }
// class _TestState extends State<Test> {
//
//   final List<Person> people= [
//     Person(name: "Sujal", number: "9867234534", img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTql7QO1cKJ2vGPissyg8P5dvN0F0fmajfgtEoaIywuRg&s", role: "Flutter Developer", salary: 1234),
//     Person(name: "Utsal", number: "9867234534", img: "https://cdn-icons-png.flaticon.com/512/5231/5231019.png", role: "Python Developer", salary: 300),
//     Person(name: "Sujal", number: "9867234534", img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzZn4Ma9vi3wsRmghKaYOf2iuJW7m6O9SkJI1T4lH-cQ&s", role: "Flutter Developer", salary: 1234),
//     Person(name: "Utsal", number: "9867234534", img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTql7QO1cKJ2vGPissyg8P5dvN0F0fmajfgtEoaIywuRg&s", role: "Python Developer", salary: 300),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         title:Text("Flutter List"),
//       ),
//       body: ListView.builder(
//         // reverse: true,
//         // physics: NeverScrollableScrollPhysics(),
//         scrollDirection: Axis.vertical,
//         itemCount:people.length,
//         itemBuilder: (BuildContext context, index){
//           return CustomCard(person:people[index],);
//         },
//       ),
//     );
//   }
// }

///Example 3

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  bool isVisiable = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Visiable Container"),
      ),
      body: Column(
        children: [
          MaterialButton(
            color: Colors.blue,
              onPressed: (){
              setState(() {
                isVisiable = !isVisiable;
              });
              },
            child: Text(
                isVisiable
                    ?'Hide Container'
                    :'Show Container'
                ),
          ),
          Visibility(
            visible: isVisiable,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.amber,
              child: Center(child: Text("Our hero Container")),
            ),
          ),
          Visibility(
              visible: isVisiable,
              child: Icon(Icons.read_more))
        ],
      ),
    );
  }
}
