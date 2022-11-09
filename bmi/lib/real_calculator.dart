
class RealCalculator {

  RealCalculator({required this.height,required this.weight});
  final int weight;
  final int height;
  double _bmi=19;

  String calculateBMI(){
    _bmi = (weight*10000.0)/(height*height);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi>25){
      return 'OVERWEIGHT';
    }
    else if(_bmi>18.5){
      return 'NORMAL';
    }
    else{
      return 'UNDERWEIGHT';
    }
  }
  String getDescription(){
    if(_bmi>25){
      return 'You have a higher tha normal body weight. try to excercise more.';
    }
    else if(_bmi>18.5){
      return 'You have a normal body weight. Good Job!!.';
    }
    else{
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

}
