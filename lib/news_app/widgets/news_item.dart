


import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: const Image(
              fit: BoxFit.fill,
              width: double.infinity,
              height: 200,
              image: AssetImage("assets/news_assets/general.avif")),
        ),
        const Text("Netanyahu now goes after critical infrastructure of Houthis in Yemen",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
        const Text("Israel on Sunday carried out airstrikes on critical infrastructure of Iran-backed Houthis in Yemen, AFP reported.",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),),

      ],
    );
  }
}
