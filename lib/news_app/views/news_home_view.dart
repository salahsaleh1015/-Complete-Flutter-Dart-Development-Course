
import 'package:flutter/material.dart';


class NewsHomeView extends StatelessWidget {
  const NewsHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("News ",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
            Text("Cloud",style: TextStyle(color: Colors.orange,fontSize: 25,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
