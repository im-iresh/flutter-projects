import 'package:flutter/material.dart';
import 'pages/input_page.dart';
void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: Color(0xFF1D2136)),
        primaryColor: Colors.red,
        scaffoldBackgroundColor: Color(0xFF1d2136)
      ),
      home: InputPage(),
    );
  }
}


