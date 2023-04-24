import 'package:bmi_calc/Constants/Consts.dart';
import 'package:flutter/material.dart';

class ReUseableContainer extends StatelessWidget {
   ReUseableContainer({required this.color,required this.child,});

   Color? color;
   Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      margin: EdgeInsets.all(15),
      child: child,
    );
  }
}
