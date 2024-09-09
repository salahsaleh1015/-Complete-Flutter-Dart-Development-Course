import 'package:flutter/material.dart';

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF314f6a),
      body: Column(
        children: [
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
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 8,
              bottom: 8,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),

              height: 65,
              child: const Row(
                children: [

                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                                    Icons.phone,
                      color: Color(0xFF314f6a),
                      size: 32,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Text("(+20) 1127504745",style: TextStyle(
                    fontSize: 24
                  ),),
                  Spacer(
                    flex: 2,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 8,
              bottom: 8,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),

              height: 65,
              child: const Row(
                children: [

                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.mail,
                      color: Color(0xFF314f6a),
                      size: 32,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Text("salahsaleh1015@gmail.com",style: TextStyle(
                      fontSize: 24
                  ),),
                  Spacer(
                    flex: 2,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
