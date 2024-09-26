import 'package:complete_flutter_dart_development_course/toku_app/components/item.dart';
import 'package:complete_flutter_dart_development_course/toku_app/models/item_model.dart';
import 'package:flutter/material.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  final List<ItemModel> items = const [

    ItemModel(
        sound: 'sounds/family_members/father.wav',
        enName: "father",
        jpName: "Chichioya",
        image: 'assets/images/family_members/family_father.png'),
    ItemModel(
        sound: 'sounds/family_members/mother.wav',
        enName: "mother",
        jpName: "Hahaoya",
        image: 'assets/images/family_members/family_mother.png'),
    ItemModel(
        sound: 'sounds/family_members/son.wav',
        enName: "son",
        jpName: "Musuko",
        image: 'assets/images/family_members/family_son.png'),
    ItemModel(
        sound: 'sounds/family_members/daughter.wav',
        enName: "daughter",
        jpName: "Musume",
        image: 'assets/images/family_members/family_daughter.png'),
    ItemModel(
        sound: 'sounds/family_members/older bother.wav',
        enName: "older brother",
        jpName: "Ani",
        image: 'assets/images/family_members/family_older_brother.png'),
    ItemModel(
        sound: 'sounds/family_members/older sister.wav',
        enName: "older sister",
        jpName: "Ane",
        image: 'assets/images/family_members/family_older_sister.png'),
    ItemModel(
        sound: 'sounds/family_members/younger sister.wav',
        enName: "younger sister",
        jpName: "Imōto",
        image: 'assets/images/family_members/family_younger_sister.png'),
    ItemModel(
        sound: 'sounds/family_members/younger brohter.wav',
        enName: "younger brother",
        jpName: "Otōto",
        image: 'assets/images/family_members/family_younger_brother.png'),
    ItemModel(
        sound: 'sounds/family_members/grand father.wav',
        enName: "grand father",
        jpName: "Sofu",
        image: 'assets/images/family_members/family_grandfather.png'),
    ItemModel(
        sound: 'sounds/family_members/grand mother.wav',
        enName: "grand mother",
        jpName: "Sobo",
        image: 'assets/images/family_members/family_grandmother.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          backgroundColor: const Color(0xff533d35),
          title: const Text(
            "Family Members",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Item(
                color:const Color(0xff558c39),
                item: items[index]);
          },
        ));
  }
}
