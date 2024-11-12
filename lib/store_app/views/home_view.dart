import 'package:complete_flutter_dart_development_course/store_app/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.cartPlus),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text("New Trend"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16,top: 100),
        child: GridView.builder(
          clipBehavior: Clip.none,
            gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.5,
        crossAxisSpacing: 10,
        mainAxisSpacing: 100
            ), itemBuilder: (context, index) => const CustomCard(),),
      ),
    );
  }
}
