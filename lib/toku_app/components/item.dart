import 'package:audioplayers/audioplayers.dart';
import 'package:complete_flutter_dart_development_course/toku_app/components/item_image.dart';
import 'package:complete_flutter_dart_development_course/toku_app/components/item_info.dart';
import 'package:complete_flutter_dart_development_course/toku_app/models/number_model.dart';
import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          ItemImage(item: item,),
          Expanded(child: ItemInfo(item: item, color: color))
        ],
      ),
    );
  }

}



