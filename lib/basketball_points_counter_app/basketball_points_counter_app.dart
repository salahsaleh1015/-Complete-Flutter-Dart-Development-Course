import 'package:flutter/material.dart';

class BasketballPointsCounterApp extends StatefulWidget {

  @override
  State<BasketballPointsCounterApp> createState() => _BasketballPointsCounterAppState();
}

class _BasketballPointsCounterAppState extends State<BasketballPointsCounterApp> {
   int teamAPoints = 0;

   int teamBPoints = 0;

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
      body: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Team A",
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                     Text(
                      "$teamAPoints",
                      style: const TextStyle(
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
                        onPressed: () {
                          setState(() {
                            teamAPoints++;
                          });
                        },
                        child: const Text(
                          "Add 1 Point",
                          style: TextStyle(color: Colors.black, fontSize: 24),
                        )),

                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(80, 50),
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            teamAPoints += 2;
                          });
                        },
                        child: const Text(
                          "Add 2 Point",
                          style: TextStyle(color: Colors.black, fontSize: 24),
                        )),

                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(80, 50),
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            teamAPoints += 3;
                          });
                        },
                        child: const Text(
                          "Add 3 Point",
                          style: TextStyle(color: Colors.black, fontSize: 24),
                        )),

                  ],
                ),
              ),
            const  SizedBox(
                height: 450,
                child:  VerticalDivider(
                  thickness: 1,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Team B",
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                     Text(
                      "$teamBPoints",
                      style: const TextStyle(
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
                        onPressed: () {
                          setState(() {
                            teamBPoints++;
                          });
                        },
                        child: const Text(
                          "Add 1 Point",
                          style: TextStyle(color: Colors.black, fontSize: 24),
                        )),

                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(80, 50),
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        onPressed: () {
                          teamBPoints += 2;
                        },
                        child: const Text(
                          "Add 2 Point",
                          style: TextStyle(color: Colors.black, fontSize: 24),
                        )),

                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(80, 50),
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBPoints += 3;
                          });

                        },
                        child: const Text(
                          "Add 3 Point",
                          style: TextStyle(color: Colors.black, fontSize: 24),
                        )),

                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(80, 50),
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              child: const Text(
                "Reset",
                style: TextStyle(color: Colors.black, fontSize: 24),
              )),
        ],
      ),
    );
  }
}
