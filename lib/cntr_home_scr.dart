import 'package:flutter/material.dart';

class HomeScrCntr extends StatefulWidget {
  const HomeScrCntr({super.key});

  @override
  State<HomeScrCntr> createState() => _HomeScrCntrState();
}

class _HomeScrCntrState extends State<HomeScrCntr> {
  int counter = 0;
  // int counter = 0; // Initialize counter variable
  
  @override
  Widget build(BuildContext context) {
    // Determine background color based on counter value
    Color backgroundColor;
    if (counter == 0) {
      backgroundColor = Colors.teal;
    } else if (counter == 1) {
      backgroundColor = Colors.orange;
    } else if (counter == 2) {
      backgroundColor = Colors.pink;
    } else if (counter == 3) {
      backgroundColor = Colors.purple;
    } else if (counter == 4) {
      backgroundColor = Colors.green;
    } else if (counter == 5) {
      backgroundColor = Colors.red;
    } else if (counter == 6) {
      backgroundColor = Colors.yellow;
    } else {
      backgroundColor = Colors.teal;
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Counter App',
            style: TextStyle(
              fontFamily: 'Caveat',
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: 
        Container(
          height: 500,
          width: double.infinity,
          color: backgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Counter: $counter',
                style: const TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
              )
            ]
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter++;
              if (counter > 6) {
                counter = 0; // Reset counter if it exceeds 6
              }
            });
          },
          child: const Icon(Icons.add),
          backgroundColor: Colors.blueAccent,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
}
}
