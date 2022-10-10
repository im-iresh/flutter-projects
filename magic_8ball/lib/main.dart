import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF4ca2f5),
        appBar: AppBar(
          title: const Center(
              child: Text('Ask Me Anything'),
          ),
          backgroundColor: const Color(0xFF3158ab),
        ),
        body: MagicBall(),
      ),
    )
  );
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber=1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: TextButton(
            onPressed: (){
              setState(() {
                ballNumber = Random().nextInt(5)+1;
              });
            },
            child: Image.asset('images/ball$ballNumber.png'),
          ),
        ),
      ],
    );
  }
}

