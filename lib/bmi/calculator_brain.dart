import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Your body isOverweight';
    } else if (_bmi > 18.5) {
      return 'Your body is Normal';
    } else {
      return 'Your body is Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise and eat more healthy.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. You should some growth muscle to have a nice body';
    } else {
      return 'You have a lower than normal body weight. You should eat and exercise a bit more.';
    }
  }
}
