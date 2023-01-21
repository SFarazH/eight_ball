// ignore_for_file: camel_case_types, prefer_const_constructors
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: myBall(),
    ),
  );
}

// ignore: use_key_in_widget_constructors
class myBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask me anything'),
        backgroundColor: Colors.blue.shade800,
      ),
      body: eightBall(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class eightBall extends StatefulWidget {
  @override
  State<eightBall> createState() => _eightBallState();
}

class _eightBallState extends State<eightBall> {
  int ballnumber = 1;

  void changeBallNumber() {
    ballnumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            changeBallNumber();                                          
          });
        },
        child: Image.asset('images/ball$ballnumber.png'),
      ),
    );
  }
}
