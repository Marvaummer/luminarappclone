import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luminarappclone/Drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white70,
//       appBar: AppBar(backgroundColor: Colors.deepPurpleAccent,
//       leading: IconButton(onPressed: (){
// //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Drawerr()));
//       }, icon: Icon(Icons.menu)),
//       title: Text("Luminar Technolab",style: TextStyle(color: Colors.white),),
//         actions: [IconButton(onPressed: (){} ,icon:Icon( Icons.notifications) )],
//
//
//     ),
    body: Container(child: Padding(
    padding: EdgeInsets.all(10),
    child: Stack(
      children: [
      Container(
      height: 200,
      width: 400,
      decoration: BoxDecoration(

          image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/chatting.jpg",)
          )),
    ),
        Positioned(
          right: 50,
          bottom: 30,
          child: Container(
            height: 20,
            width: 50,

          ),
        ),
    //const Positioned(child:Container(child Image(image: AssetImage("assets/images/img.png"))),
    const Positioned(
    top:20,
    left: 30,
    child: Text("Share Your Experience",
      style: TextStyle(fontSize: 15,color: Colors.black),)),
        const Positioned(
            top:38,
            left: 30,
            child: Text("Give your tutor a smile by ",
              style: TextStyle(fontSize: 15,color: Colors.black26),)),
        const Positioned(
            top:55,
            left: 30,
            child: Text(" sharing your experience",
              style: TextStyle(fontSize: 17,color: Colors.black26),)),
    Positioned(
    left: 55,
    bottom: 40,
    child: Card(

    child:ElevatedButton(onPressed: (){}, child:  Text('write now',
      style: TextStyle(fontSize: 15,color: Colors.black),),
    ),
    ),
    ),
      ],

      ),

    ),


    ),

    );
  }
}



