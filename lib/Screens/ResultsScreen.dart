import 'package:bmi_calc/Calculator_Logic/Calculator.dart';
import 'package:bmi_calc/Constants/Consts.dart';
import 'package:bmi_calc/Reusable_Components/ReUseableContainer.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({Key? key, required this.calculator}) : super(key: key);

  Calculator calculator;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RESULTS'),
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
                  calculator.genderIcon,
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    calculator.gender == Gender.male ? 'MALE' : 'FEMALE',
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    calculator.bmi.toStringAsFixed(2),
                    style: const TextStyle(
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
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: kBottomNavColor, // Text Color
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('BACK'),
            ),
          ),
        ],
      ),
    );
  }
}
