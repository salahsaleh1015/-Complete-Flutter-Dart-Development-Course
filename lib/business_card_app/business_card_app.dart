
import 'package:flutter/material.dart';

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor:Color(0xFF314f6a),
      body: Center(
        child: Column(
         children: [
           CircleAvatar(
            radius: 105,
            backgroundColor: Colors.white,
             child:CircleAvatar(
               radius: 100,
               backgroundImage: AssetImage("images/business_image.jpeg"),
             ) ,
           ),
           Text("Salah Saleh", style: TextStyle(
             color: Colors.white,
             fontSize: 30,
             fontFamily: "Pacifico",
             fontWeight: FontWeight.bold
           ))
         ],
        ),
      ),
    );
  }
}
