


import 'package:complete_flutter_dart_development_course/news_app/models/category_model.dart';
import 'package:flutter/material.dart';

import '../items/category_item.dart';


class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

 final List<CategoryModel> categories = const[
    CategoryModel(name: "business", imageAssetPath: "assets/news_assets/business.avif"),
   CategoryModel(name: "entertaiment", imageAssetPath: "assets/news_assets/entertaiment.avif"),
   CategoryModel(name: "health", imageAssetPath: "assets/news_assets/health.avif"),
   CategoryModel(name: "science", imageAssetPath: "assets/news_assets/science.avif"),
   CategoryModel(name: "sports", imageAssetPath: "assets/news_assets/sports.avif"),
   CategoryModel(name: "general", imageAssetPath: "assets/news_assets/general.avif"),
  ];

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return  CategoryItem(
            category: categories[index] ,
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}
