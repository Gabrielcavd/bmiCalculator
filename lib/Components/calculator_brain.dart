import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorBrain {
  final double height;
  final int weight;

  CalculatorBrain({required this.height, required this.weight});

  double getBMI() {
    return weight / pow(height, 2);
  }

  String getResult() {
    if (getBMI() < 18.5) {
      return "Abaixo do peso";
    } else if (getBMI() >= 18.5 && getBMI() < 25) {
      return "Peso normal";
    } else if (getBMI() >= 25 && getBMI() < 30) {
      return "Sobrepeso";
    } else if (getBMI() >= 30 && getBMI() < 35) {
      return "Obesidade grau 1";
    } else if (getBMI() >= 35 && getBMI() < 40) {
      return "Obesidade grau 2";
    } else {
      return "Obesidade Mórbida";
    }
  }

  Image getImage(double bmi) {
    if (bmi < 18.5) {
      return Image.asset("assets/1.png");
    } else if (bmi >= 18.5 && bmi < 25) {
      return Image.asset("assets/2.png");
    } else if (bmi >= 25 && bmi < 30) {
      return Image.asset("assets/3.png");
    } else if (bmi >= 30 && bmi < 35) {
      return Image.asset("assets/4.png");
    } else if (bmi >= 35 && bmi < 40) {
      return Image.asset("assets/5.png");
    } else {
      return Image.asset("assets/6.png");
    }
  }
}
