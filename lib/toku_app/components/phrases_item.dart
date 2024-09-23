import 'package:complete_flutter_dart_development_course/toku_app/components/item_info.dart';
import 'package:complete_flutter_dart_development_course/toku_app/models/number_model.dart';
import 'package:flutter/material.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return  ItemInfo(item: item, color: color);
  }
}
