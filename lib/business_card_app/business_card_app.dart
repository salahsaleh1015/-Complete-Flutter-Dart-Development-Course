
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
            radius: 125,
            backgroundColor: Colors.white,
             child:CircleAvatar(
               radius: 120,
               backgroundImage: AssetImage("images/business_image.jpeg"),
             ) ,
           )
         ],
        ),
      ),
    );
  }
}
