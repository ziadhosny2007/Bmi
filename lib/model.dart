import 'dart:math';

import 'package:flutter/material.dart';

class Bmi {
  int age;
  double height;
  int weight;
  String gender;
  Bmi({
    required this.age,
    required this.gender,
    required this.height,
    required this.weight,
  });

  double get calculateBmi {
    double result = (weight / pow((height/100), 2)).roundToDouble();
    return result;
  }

  String get title {
    if (calculateBmi < 18.5) {
      return "Underweight";
    } else if (calculateBmi < 25) {
      return "Normal";
    } else if (calculateBmi < 30) {
      return "Overweight";
    } else {
      return "Obesity";
    }
  }

  Color get titleColor {
    if (calculateBmi < 18.5) {
      return Colors.blue;
    } else if (calculateBmi < 25) {
      return Colors.green;
    } else if (calculateBmi < 30) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }

  String get description {
    if (calculateBmi < 18.5) {
      return "You Have a Low Body Weight, You Should Eat More.";
    } else if (calculateBmi < 25) {
      return "You Have a Normal Body Weight, Good Job.";
    } else if (calculateBmi < 30) {
      return "You Have a High Body Weight, Try to Exercise More.";
    } else {
      return "You Have a Very High Body Weight, Try to Follow a Healthy Lifestyle.";
    }
  }
}
