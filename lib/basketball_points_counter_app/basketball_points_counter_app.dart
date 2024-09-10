import 'package:flutter/material.dart';

class BasketballPointsCounterApp extends StatelessWidget {
  const BasketballPointsCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          "Points Counter",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              const Text(
                "Team A",
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              const Text(
                "0",
                style: TextStyle(
                  fontSize: 150,
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(80, 50),
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Add 1 Point",
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  )),
              const Spacer(
                flex: 1,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(80, 50),
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Add 2 Point",
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  )),
              const Spacer(
                flex: 1,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(80, 50),
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Add 3 Point",
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  )),
              const Spacer(
                flex:12,
              ),
            ],
          ),
          const VerticalDivider(
            thickness: 1,
            color: Colors.grey,
          ),
          Column(
            children: [
              const Text(
                "Team B",
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              const Text(
                "0",
                style: TextStyle(
                  fontSize: 150,
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(80, 50),
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Add 1 Point",
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  )),
              const Spacer(
                flex: 1,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(80, 50),
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Add 2 Point",
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  )),
              const Spacer(
                flex: 1,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(80, 50),
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Add 3 Point",
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  )),
              const Spacer(
                flex:12,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
