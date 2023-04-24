import 'package:bmi_calc/Constants/Consts.dart';
import 'package:flutter/material.dart';

class Calculator{

  Calculator({
    required this.height,
    required this.weight,
    this.gender,
    required this.genderIcon,

  });

  double height;
  int weight;
  double bmi=0;
  Gender? gender;
  Icon genderIcon;

  void calculate(){
    bmi=weight.toDouble()/(height*height);
  }
}