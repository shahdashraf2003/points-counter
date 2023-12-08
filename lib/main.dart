import 'package:flutter/material.dart';

void main() {
  runApp(const BasketBallScoreCounter());
}

class BasketBallScoreCounter extends StatefulWidget {
  const BasketBallScoreCounter({super.key});

  @override
  State<BasketBallScoreCounter> createState() => _BasketBallScoreCounterState();
}

class _BasketBallScoreCounterState extends State<BasketBallScoreCounter> {
  int teamAPoints = 0;
  int teamBPoints = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove debug banner
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            "Points Counter",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Team A
                  Column(
                    children: [
                      const Text(
                        "Team A",
                        style: TextStyle(
                          fontSize: 35,
                        ),
                      ),
                      FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          '$teamAPoints',
                          style: const TextStyle(
                            fontSize: 150,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            teamAPoints++;
                          });
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            teamAPoints += 2;
                          });
                        },
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            teamAPoints += 3;
                          });
                        },
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 410,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),

                  // Team B
                  Column(
                    children: [
                      const Text(
                        "Team B",
                        style: TextStyle(
                          fontSize: 35,
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
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBPoints++;
                          });
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBPoints += 2;
                          });
                        },
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBPoints += 3;
                          });
                        },
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(150, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    teamAPoints = 0;
                    teamBPoints = 0;
                  });
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
