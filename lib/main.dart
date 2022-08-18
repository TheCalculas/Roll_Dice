import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftButton = 1;
  int rightButton = 1;

  void changeDice()
  {
    setState(() {
      leftButton = Random().nextInt(6)+1;
      rightButton= Random().nextInt(6)+1;
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.lightBlue.shade100,
            appBar: AppBar(
              title: const Center(child: Text('Roll The Dice')),
              backgroundColor: Colors.lightBlueAccent,
            ),
            body: Center(
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      child: Image.asset('images/dice$leftButton.png'),
                      onPressed: () {
                        changeDice();
                      },),
                  ),

                  Expanded(
                    child: TextButton(
                      child: Image.asset('images/dice$rightButton.png'),
                      onPressed: () {
                        changeDice();
                      },),
                  ),

                ],

              ),
            )
        )

    );
  }
  }


