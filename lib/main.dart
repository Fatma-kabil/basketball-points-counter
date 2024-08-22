import 'package:flutter/material.dart';

void main() {
  runApp(const BasketballCount());
}

class BasketballCount extends StatefulWidget {
  const BasketballCount({super.key});

  @override
  State<BasketballCount> createState() => _BasketballCountState();
}

class _BasketballCountState extends State<BasketballCount> {
  int teamApoints = 0;

  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text(
            'Points Counter',
            style: TextStyle(
                color: Colors.grey[800],
                fontWeight: FontWeight.w500,
                fontSize: 24),
          ),
          shadowColor: const Color.fromARGB(255, 8, 46, 52),
          backgroundColor: const Color(0xFF3AA6B9),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team A ',
                        style: TextStyle(
                            fontSize: 32,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '$teamApoints',
                        style: TextStyle(
                            fontSize: 150,
                            color: Colors.grey[800],
                            fontWeight: FontWeight.w400),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF3AA6B9),
                              minimumSize: const Size(150, 50)),
                          onPressed: () {
                            teamApoints++;
                            setState(() {});
                          },
                          child: Text(
                            'Add 1 Point',
                            style: TextStyle(
                                color: Colors.grey[800],
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          )),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF3AA6B9),
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamApoints = teamApoints + 2;
                          });
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF3AA6B9),
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamApoints = teamApoints + 3;
                          });
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    endIndent: 20,
                    indent: 60,
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(
                            fontSize: 32,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '$teamBpoints ',
                        style: TextStyle(
                            fontSize: 150,
                            color: Colors.grey[800],
                            fontWeight: FontWeight.w400),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF3AA6B9),
                              minimumSize: const Size(150, 50)),
                          onPressed: () {
                            setState(() {
                              teamBpoints++;
                            });
                          },
                          child: Text(
                            'Add 1 Point',
                            style: TextStyle(
                                color: Colors.grey[800],
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          )),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF3AA6B9),
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamBpoints = teamBpoints + 2;
                          });
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF3AA6B9),
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamBpoints = teamBpoints + 3;
                          });
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3AA6B9),
                  minimumSize: const Size(170, 55)),
              onPressed: () {
                setState(() {
                  teamApoints = 0;
                  teamBpoints = 0;
                });
              },
              child: Text(
                'Reset',
                style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w600,
                    fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
