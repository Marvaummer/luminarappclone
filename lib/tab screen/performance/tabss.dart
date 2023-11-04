import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tabbody extends StatefulWidget {
  const Tabbody({Key? key}) : super(key: key);

  @override
  State<Tabbody> createState() => _TabbodyState();
}

class _TabbodyState extends State<Tabbody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children:[Positioned(
        bottom: 160,left: 125,
        child:
        CircleAvatar(
          radius: 80.0,
          backgroundImage: AssetImage("assets/images/img_1.png"),
        ),
      ),
      Positioned(bottom: 110,left: 20,
        child:
        Text(
          'You have not attempted any test',
          style: GoogleFonts.aclonica(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
          Positioned(bottom: 70,left: 20,
            child:
            Text(
              'practice makes perfect.Attempt tests from',
              style: GoogleFonts.aclonica(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ),

          Positioned(bottom: 50,left: 80,
            child:
            Text(
              'your batches or courses',
              style: GoogleFonts.aclonica(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ),
    ]),
    );
  }
}
