
import 'package:flutter/material.dart';
import 'package:luminarappclone/screens/screen2.dart';
import 'package:luminarappclone/tab%20screen/batches.dart';
import 'package:luminarappclone/tab%20screen/courses.dart';
import 'package:luminarappclone/tab%20screen/info.dart';
import 'package:luminarappclone/tab%20screen/payment.dart';
import 'package:luminarappclone/tab%20screen/performance/performance.dart';


import '../main.dart';
import 'Screen3.dart';

void main() {
  runApp(ProfileApp(),
  );
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5, // Number of tabs
        child: ProfileScreen(),

      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.deepPurpleAccent,
      //   leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      //   title: Text(
      //     "Luminar Technolab",
      //     style: TextStyle(color: Colors.white),
      //   ),
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(Icons.notifications),
      //     ),
      //   ],
      // ),
      body: TabBarView(
        children: [
          ProfileTab(),
        ],
      ),
    );
  }
}

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UserAccountsDrawerHeader(
          accountName: Text('John Doe',style: TextStyle(color: Colors.black),),
          accountEmail: Text('Organisation code PPEUP',style: TextStyle(color:
          Colors.black),),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage("assets/images/dp pic.png"),
          ),
          decoration: BoxDecoration( // Customize the decoration
            color: Colors.white, // Set the background color to white
          ),

        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal, // Make it scroll horizontally
          child: TabBar(
            isScrollable: true, // Enable scrolling for the TabBar
            labelColor: Colors.deepPurpleAccent, // Color for the selected tab
            unselectedLabelColor: Colors.black,
            tabs: [
              Tab(text: 'info'),
              Tab(text: 'Batches'),
              Tab(text: "Courses"),
              Tab(text: "Performance"),
              Tab(text: "Payments"),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            children: [
              Expansionnn(),
              Batches(),
              courses(),
              Performance(),
              payments(),

            ],
          ),
        ),
      ],
    );
  }
}







// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:luminarappclone/screens/Homepage.dart';
//
// class Screen5 extends StatefulWidget {
//   const Screen5({Key? key}) : super(key: key);
//
//   @override
//   State<Screen5> createState() => _Screen5State();
// }
//
// class _Screen5State extends State<Screen5> {
//   @override
//   Widget build(BuildContext context) {
//     return
//       DefaultTabController(
//       length: 4,
//       child: Scaffold(
//
//           appBar: AppBar(
//             backgroundColor: Colors.deepPurpleAccent,
//           leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu),),
//     title: Text("Luminar Technolab",style: TextStyle(color: Colors.white),),
//             actions:  [
//               Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: IconButton(onPressed: (){} ,icon:Icon( Icons.notifications) )
//               ),
//
//             ],
//
//             bottom: const TabBar(tabs: [
//               Column(
//                 children: [
//                   Icon(Icons.people),
//                   Text("info")
//                 ],
//               ),
//               Text("BATCHES"),
//               Text("COURSES"),
//               Text("PAYMENT"),
//
//             ]),
//
//           ),
//
//           body: Column(
//             children: [
//
//               TabBarView(
//                 children: [
//
//                   const Center(
//                     child: Text("Chat"),
//                   ),
//                   Center(
//                     child: Text("Status"),
//                   ),
//                   Center(child: Text("Call")),
//                 ],
//               ),
//
//             ],
//           )),
//     );
//   }
// }
//
// // Widget _buildContainer() {
// //   return Container(child: CircleAvatar(backgroundImage: AssetImage(""),),
// //   // title: Text("Marvaummer"),
// //
// //   );
// // }
// class ProfileScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         CircleAvatar(
//           radius: 60,
//           backgroundImage: AssetImage(
//               'assets/profile_image.jpg'), // Add your profile image
//         ),
//         SizedBox(height: 20),
//         Text(
//           'John Doe',
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         SizedBox(height: 10),
//         Text(
//           'Flutter Developer',
//           style: TextStyle(
//             fontSize: 16,
//             color: Colors.grey,
//           ),
//         ),
//       ],
//
//     );
//   }
// }
