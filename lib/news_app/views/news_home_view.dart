import 'package:complete_flutter_dart_development_course/news_app/widgets/builders/sliver_news_list_builder.dart';
import 'package:complete_flutter_dart_development_course/news_app/widgets/lists/categories_list.dart';
import 'package:complete_flutter_dart_development_course/news_app/widgets/lists/sliver_news_list.dart';
import 'package:flutter/material.dart';

class NewsHomeView extends StatelessWidget {
  const NewsHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "News ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Cloud",
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),

        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoriesList()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 30,
              ),
            ),
            SliverNewsListBuilder(

            ),
          ],
        ),
        // child: Column(
        //   children: [
        //     CategoriesList(),
        //     SizedBox(
        //       height: 30,
        //     ),
        //     NewsList(),
        //   ],
        // ),
      ),
    );
  }
}
