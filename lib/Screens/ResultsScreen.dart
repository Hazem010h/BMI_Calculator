import 'package:bmi_calc/Calculator_Logic/Calculator.dart';
import 'package:bmi_calc/Constants/Consts.dart';
import 'package:bmi_calc/Reusable_Components/ReUseableContainer.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
   ResultScreen({Key? key,required this.calculator}) : super(key: key);

  Calculator calculator;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RESULTS'),
        centerTitle: true,
        backgroundColor: kScaffoldBg,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ReUseableContainer(
            color: kInactiveContainerColor,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  this.calculator.genderIcon,
                  SizedBox(
                    height:5 ,
                  ),
                  Text(
                    this.calculator.gender==Gender.male?'MALE':'FEMALE',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height:10 ,
                  ),
                  Text(
                      this.calculator.bmi.toStringAsFixed(2),
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: TextButton(
              child: Text('BACK'),
              style:  TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: kBottomNavColor,// Text Color
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
