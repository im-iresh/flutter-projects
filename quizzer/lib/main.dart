import 'package:flutter/material.dart';
import 'package:quizzer/brains.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

Brains brains = Brains();
void main() {
  runApp(const Quiz());
}

class Quiz extends StatelessWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child:  QuizPage(),
          ),
        ),
      ),
    );
  }
}


class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> score = [];
  void checkAnswer(bool userAns){
    setState(() {
      if(brains.isFinished()==true){
        Alert(
          context: context,
          type: AlertType.success,
          title: "Quiz Finished",
          desc: "You have answered all the questions of the quiz.",
          buttons: [
            DialogButton(
              child: Text('Re-attempt Quiz',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                setState(() {
                  brains.reset();
                  score.clear();
                });
                Navigator.pop(context);
              },
              width: 180,
              height: 40,
            )
          ],
        ).show();
      }
      else{
        if(userAns==brains.getAns()){
          score.add(const Icon(Icons.check,color: Colors.green,));
        }
        else{
          score.add(const Icon(Icons.close,color: Colors.red,));
        }
        brains.nextQuestion();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(brains.getQues(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: (){
                  checkAnswer(true);
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightGreen[500],
              ),
                child: const Text('True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
                ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: (){
                  checkAnswer(false);
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: const Text('False',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
        Row(
          children: score,
        )
      ],
    );
  }
}

