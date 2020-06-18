import 'dart:math';

class Calculation{

  Calculation({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI(){
    _bmi = weight/ pow((height/100), 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResults(){
    if (_bmi >= 25){
      return 'OverWeight';
    }else if(_bmi> 18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }

  }
  String getOutput(){
    if (_bmi >= 25){
      return '''You have a higher than ideal level of body fats considering your height. '
          'In such cases, it is important that you lose some amount of weight in order to improve your health.'
          ' It is recommended that you talk to a doctor or dietician for professional advice.''';
    }else if(_bmi> 18.5){
      return 'When you maintain a healthy level of body fat, it means that you have a much lower risk of developing health complications.';
    }else{
      return '''To avoid health complications that may arise due to low levels of body fat, you need to put on more weight.
 Make sure you get in touch with your doctor or a dietician for professional insight and advice.''';
    }

  }

}