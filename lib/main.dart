import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(BasketballPoints());
}

class BasketballPoints extends StatefulWidget {
  @override
  State<BasketballPoints> createState() => _BasketballPointsState();
}

class _BasketballPointsState extends State<BasketballPoints> {
  //const BasketballPoints({super.key});
  int teamAPoints = 0, teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //AppBar
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            'Points Conter',
            style: TextStyle(
              fontSize: 25,
              color: Color(0xFFFFF1A6),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Column 1
                  Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 32,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "$teamAPoints",
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      //Button 1
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamAPoints++;
                            });
                            print(teamAPoints);
                          },
                          child: const Text(
                            'add 1 point',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                        ),
                      ),
                      //Space
                      const SizedBox(
                        height: 30,
                      ),
                      //Button 2
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamAPoints += 2;
                            });
                            print(teamAPoints);
                          },
                          child: const Text(
                            'add 2 point',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                        ),
                      ),
                      //Space
                      const SizedBox(
                        height: 30,
                      ),
                      //Button 3
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamAPoints += 3;
                            });
                            print(teamAPoints);
                          },
                          child: const Text(
                            'add 3 point',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                        ),
                      ),
                    ],
                  ),
                  //VerticalDivider
                  const SizedBox(
                    height: 420,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  //Column 2
                  Column(
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 32,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$teamBPoints',
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      //Button 1
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            teamBPoints++;
                            setState(() {});
                            print(teamAPoints);
                          },
                          child: const Text(
                            'add 1 point',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                        ),
                      ),
                      //Space
                      const SizedBox(
                        height: 30,
                      ),
                      //Button 2
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            teamBPoints += 2;
                            setState(() {});
                            print(teamAPoints);
                          },
                          child: const Text(
                            'add 2 point',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                        ),
                      ),
                      //Space
                      const SizedBox(
                        height: 30,
                      ),
                      //Button 3
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            teamBPoints += 3;
                            setState(() {});
                            print(teamAPoints);
                          },
                          child: const Text(
                            'add 3 point',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
                width: 150,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      teamAPoints = 0;
                      teamBPoints = 0;
                    });
                    print(teamAPoints);
                  },
                  child: const Text(
                    'Reset',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
