
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatelessWidget {
  const HomeView ({super.key});
 static String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.cartPlus),),
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("New Trend"),
      ),
    );
  }
}
