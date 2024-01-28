// ignore_for_file: prefer_typing_uninitialized_variables, no_leading_underscores_for_local_identifiers, unrelated_type_equality_checks

import 'dart:math';

class CalculatorBrain {
  final int bmiheight;
  final int bmiweight;
  double? _bmi;
  CalculatorBrain({required this.bmiheight, required this.bmiweight});

  String calcuateBmi() {
   _bmi = bmiweight / pow(bmiheight / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi == Null) {
      return "BMI NOT CALCULATED";
    }
    if (_bmi! >= 25) {
      return "Overweight";
    } else if (_bmi! > 18) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (_bmi == Null) {
      return "No Interpretation";
    }
    if (_bmi! >= 25) {
      return "You have a higher than normal weight, please try and exercise more";
    } else if (_bmi! > 18) {
      return "You have a normal body weight. Good job";
    } else {
      return "You have a lower than normal body weight, please eat more";
    }
  }
}
