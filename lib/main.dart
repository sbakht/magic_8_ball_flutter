import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        title: "Magic 8 Ball",
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text("Magic 8 Ball"),
          ),
          backgroundColor: Colors.teal,
          body: Row(
            children: [
              Expanded(child: EightBall()),
              Expanded(child: EightBall()),
            ],
          ),
        ),
      ),
    );

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int state = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            state = Random().nextInt(4) + 1;
          });
        },
        child: Image.asset('images/ball$state.png'),
      ),
    );
  }
}
