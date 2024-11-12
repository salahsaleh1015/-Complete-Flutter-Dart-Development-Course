

import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 135,
          width: 240,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                blurRadius: 10,
                spreadRadius: 2,
                color: Colors.grey.withOpacity(0.2))
          ]),
          child: const Card(
            color: Colors.white,
            elevation: 10,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "HandBag LV",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        r"$225",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 25,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
            bottom: 90,
            left: 115,
            child: Image.network(
              "https://m.media-amazon.com/images/I/5184gJbdXLL._AC_SX679_.jpg",
              height: 100,
            ))
      ],
    );
  }
}
