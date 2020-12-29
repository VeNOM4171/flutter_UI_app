import 'package:flutter/material.dart';
import 'dart:math';

class BMICalculator  {
  BMICalculator({@required this.height, @required this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight/ pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if(_bmi <= 18.5){
      return 'UnderWeight';
    } else if (_bmi > 18.5 && _bmi <= 25) {
      return 'Normal';
    } else if (_bmi > 25 && _bmi <= 30) {
      return 'OverWeight';
    } else if (_bmi > 30) {
      return 'Obesity';
    }
  }

  String getInterPretation() {
    if(_bmi <= 18.5){
      return 'You need to eat CheesePizza!!';
    } else if (_bmi > 18.5 && _bmi <= 25) {
      return 'Perfect!!! Maintain The Body.';
    } else if (_bmi > 25 && _bmi <= 30) {
      return 'You need to Start Diet plan.';
    } else if (_bmi > 30) {
      return 'Stop Eating FastFood, oil.';
    }  }
}
