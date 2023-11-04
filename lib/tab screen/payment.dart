import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class payments extends StatefulWidget {
  const payments({super.key});

  @override
  State<payments> createState() => _paymentsState();
}

class _paymentsState extends State<payments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Stack(
            children:[Positioned(
              bottom: 200,left: 125,
              child:
              CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage("assets/images/WhatsApp Image 2023-11-02 at 12.39.14_4e3090b0.jpg"),
              ),
            ),
              Positioned(bottom: 165,left: 50,
                child:
                Text(
                  "You don't have any transactions to show! ",
                  style: GoogleFonts.aclonica(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ])
    );
  }
}