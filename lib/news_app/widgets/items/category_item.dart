
import 'package:complete_flutter_dart_development_course/news_app/views/category_view.dart';
import 'package:flutter/material.dart';

import '../../models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return  CategoryView(
             category: category.name,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          width: 170,
          height: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image:  DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(category.imageAssetPath),
              )
          ),
          child:  Center(
            child: Text(category.name,style:const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    );
  }
}
