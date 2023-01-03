import 'dart:math';

class Calculation{

  final int height;
  final int weight;
  late double _bmi ;

  Calculation({required this.height,required this.weight}){
    _bmi = weight / pow(height/100, 2);
  }

  String Calculate(){
    return _bmi.toStringAsFixed(1);
  }


  String getInterpretation(){
    if(_bmi >= 25)
      return 'You are OverWeight , Please eat less!';
    else if(_bmi > 18.5)
      return 'You weight is normal!';
    else
      return 'You are underweight! , you can eat more!';
  }

  String getResult(){
    if(_bmi >= 25)
      return 'OVERWEIGHT';
    else if(_bmi>18.5)
      return 'NORMAL';
    else
      return 'UNDERWEIGHT';
  }

}