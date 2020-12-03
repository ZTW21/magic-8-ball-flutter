import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlue,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue[900],
          ),
          body: EightBall(),
        ),
      ),
    );

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int ballNumber = 1;

  void rollBall() {
    ballNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rollBall();
                });
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
