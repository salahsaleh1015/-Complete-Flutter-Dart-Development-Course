import 'package:flutter/material.dart';

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF314f6a),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
           const CircleAvatar(
            radius: 105,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("images/business_image.jpeg"),
            ),
          ),
           const Text("Salah Saleh",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: "Pacifico",
                  fontWeight: FontWeight.bold)),
           const Text("Flutter Developer",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 25,
                  fontWeight: FontWeight.normal)),
           const Divider(
            color: Colors.grey,
            height: 10,
            indent: 50,
            endIndent: 50,
            thickness: 2,
          ),

          Card(
            margin:  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: const ListTile(
              leading: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Icon(
                  Icons.phone,
                  color: Color(0xFF314f6a),
                  size: 32,
                ),
              ),
              title: Text(
                "(+20) 1127504745",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: const ListTile(
              leading: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Icon(
                  Icons.mail,
                  color: Color(0xFF314f6a),
                  size: 32,
                ),
              ),
              title:  Text(
                "salahsaleh@gmail.com",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
