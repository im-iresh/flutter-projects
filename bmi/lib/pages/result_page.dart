import 'package:flutter/material.dart';
import '../constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.bmi,required this.bmiResult,required this.desc});
  final String bmi;
  final String bmiResult;
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('BMI Calculator')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 30),
                child: Center(
                  child: Text(
                    'Your Results',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: kActiveContainerColor,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        bmiResult,
                      style: TextStyle(
                        color: Color(0XDF24D876),
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1
                      ),
                    ),
                    Text(bmi,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 95,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    Text(desc,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFC4C5CE),
                        fontSize: 22,

                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                color: kBottomContainerColor ,
                height: kBottomContainerHeight,
                width: double.infinity,
                child: const Center(
                  child: Text('Re-Calculate Your BMI',
                    style: TextStyle(
                      fontSize: 28,
                      letterSpacing: 1,
                      color: Colors.white,
                    ),),
                ),
              ),
            )
          ],
        )
    );
  }
}
