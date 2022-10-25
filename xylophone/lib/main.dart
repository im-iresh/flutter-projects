import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());


class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playsound(int num){
    final player = AudioPlayer();
    player.play(AssetSource('note$num.wav'));
  }

  Expanded buildButton(Color color, int num){
    return Expanded(
      child: TextButton(
        onPressed: (){
          playsound(num);
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        child:  Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              buildButton(Colors.red, 1),
              buildButton(Colors.orange,2),
              buildButton(Colors.yellow, 3),
              buildButton(Colors.green, 4),
              buildButton(Colors.teal, 5),
              buildButton(Colors.blue, 6),
              buildButton(Colors.purple,7),

            ],
          ),
        ),
      ),
    );
  }
}
