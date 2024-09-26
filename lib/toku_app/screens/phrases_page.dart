import 'package:complete_flutter_dart_development_course/toku_app/components/phrases_item.dart';
import 'package:complete_flutter_dart_development_course/toku_app/models/item_model.dart';
import 'package:flutter/material.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<ItemModel> phrases = const [
    ItemModel(
      sound: 'sounds/phrases/are_you_coming.wav',
      enName: "are you coming",
      jpName: "Kimasu ka",
    ),
    ItemModel(
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
      enName: "dont forget to subscribe",
      jpName: "Kōdoku suru koto o wasurenaide kudasai",
    ),
    ItemModel(
      sound: 'sounds/phrases/how_are_you_feeling.wav',
      enName: "how are you feeling",
      jpName: "Go kibun wa ikagadesu ka.",
    ),
    ItemModel(
      sound: 'sounds/phrases/i_love_anime.wav',
      enName: "i love anime",
      jpName: "Watashi wa anime ga daisukidesu",
    ),
    ItemModel(
      sound: 'sounds/phrases/i_love_programming.wav',
      enName: "i love programming",
      jpName: "Watashi wa puroguramingu ga daisukidesu",
    ),
    ItemModel(
      sound: 'sounds/phrases/programming_is_easy.wav',
      enName: "programming is easy",
      jpName: "Puroguramingu wa kantandesu",
    ),
    ItemModel(
      sound: 'sounds/phrases/what_is_your_name.wav',
      enName: "what is your name",
      jpName: "Anata no namae wa nanidesu ka",
    ),
    ItemModel(
      sound: 'sounds/phrases/where_are_you_going.wav',
      enName: "where are you going",
      jpName: "Doko ni iku no",
    ),
    ItemModel(
      sound: 'sounds/phrases/yes_im_coming.wav',
      enName: "yes im coming",
      jpName: "Hai, kimasu",
    ),

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
            "Phrases Page",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (context, index) {
            return PhrasesItem(
                color: const Color(0xff558c39), item: phrases[index]);
          },
        ));
  }
}
