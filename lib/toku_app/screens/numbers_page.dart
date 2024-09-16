import 'package:flutter/material.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final Number one = const Number(
    image: 'assets/images/numbers/number_one.png',
    enName: "one",
    jpName: "ichi",
  );
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
          "Numbers",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: const Color(0xffff9f3b),
        height: 100,
        child: Row(
          children: [
            Container(
                color: const Color(0xfffffde4),
                child: Image.asset(one.image)),
             Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                   one.jpName,
                    style: const TextStyle(fontSize: 21, color: Colors.white),
                  ),
                  Text(
                   one.enName,
                    style: const TextStyle(fontSize: 21, color: Colors.white),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 27,
                ))
          ],
        ),
      ),
    );
  }
}

class Number {
  final String image;
  final String jpName;
  final String enName;
  const Number(
      {required this.image, required this.enName, required this.jpName});
}
