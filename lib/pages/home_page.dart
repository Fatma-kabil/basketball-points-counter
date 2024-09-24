import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      '0',
                      style: TextStyle(
                          fontSize: 150,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.w400),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF3AA6B9),
                            minimumSize: const Size(150, 50)),
                        onPressed: () {},
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
                      onPressed: () {},
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
                      onPressed: () {},
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
                      '0 ',
                      style: TextStyle(
                          fontSize: 150,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.w400),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF3AA6B9),
                            minimumSize: const Size(150, 50)),
                        onPressed: () {},
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
                      onPressed: () {},
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
                      onPressed: () {},
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
            onPressed: () {},
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
    );
  }
}
