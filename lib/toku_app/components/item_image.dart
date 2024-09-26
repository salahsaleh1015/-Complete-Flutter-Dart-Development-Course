import 'package:complete_flutter_dart_development_course/toku_app/models/item_model.dart';
import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  const ItemImage({super.key, required this.item});
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return  Container(
        color: const Color(0xfffffde4), child: Image.asset(item.image!));
  }
}


