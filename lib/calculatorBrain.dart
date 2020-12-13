import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "OVERWEIGHT";
    } else if (_bmi > 18.5) {
      return "NORMAL";
    } else {
      return "UNDERWEIGHT";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "You have higher than normal body weight.\nTry to exercise more.";
    } else if (_bmi > 18.5) {
      return "You have a normal body weight.\nGood Job!";
    } else {
      return "You have a lower than normal body weight.\n You can eat a bit more.";
    }
  }
}
