import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange[500],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[300],
          title: const Center(child: Text('I am poor')),
        ),
        body: const Center(
          child: Image(
            image: AssetImage('images/poor.png'),
          ),
        ),
      ),
    ),
  );
}
