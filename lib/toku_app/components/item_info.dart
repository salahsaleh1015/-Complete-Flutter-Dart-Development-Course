import 'package:audioplayers/audioplayers.dart';
import 'package:complete_flutter_dart_development_course/toku_app/models/number_model.dart';
import 'package:flutter/material.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    item.jpName,
                    maxLines: 2,
                    style: const TextStyle(fontSize: 21, color: Colors.white,),
                  ),
                  Text(
                    item.enName,
                    style: const TextStyle(fontSize: 21, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed:item.playSound,
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 27,
              ))
        ],
      ),
    );
  }
}