import 'package:flutter/material.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

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
                child: Image.asset('assets/images/numbers/number_one.png')),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ichi",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                  Text(
                    "one",
                    style: TextStyle(fontSize: 21, color: Colors.white),
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
