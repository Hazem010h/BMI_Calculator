import 'package:bmi_calc/Calculator_Logic/Calculator.dart';
import 'package:bmi_calc/Constants/Consts.dart';
import 'package:bmi_calc/Reusable_Components/ReUseableContainer.dart';
import 'package:bmi_calc/Screens/ResultsScreen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      selectedGender = Gender.male;
                      setState(() {
                        selectedGender;
                      });
                    },
                    child: ReUseableContainer(
                      color: (selectedGender == Gender.male)
                          ? kActiveContainerColor
                          : kInactiveContainerColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            FontAwesomeIcons.mars,
                            size: 80,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text('MALE'),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      selectedGender = Gender.female;
                      setState(() {
                        selectedGender;
                      });
                    },
                    child: ReUseableContainer(
                      color: (selectedGender == Gender.female)
                          ? kActiveContainerColor
                          : kInactiveContainerColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            FontAwesomeIcons.venus,
                            size: 80,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text('FEMALE'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReUseableContainer(
              color: kInactiveContainerColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: smallTxt,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: bigTxt,
                      ),
                      Text(
                        'cm',
                        style: smallTxt,
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    onChanged: (newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                    min: 100,
                    max: 250,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ReUseableContainer(
                    color: kInactiveContainerColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: smallTxt,
                        ),
                        Text(
                          weight.toString(),
                          style: bigTxt,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FloatingActionButton.small(
                              onPressed: () {
                                if (weight > 1) {
                                  setState(() {
                                    weight--;
                                  });
                                }
                              },
                              child: const Icon(FontAwesomeIcons.minus),
                              backgroundColor: kActiveContainerColor,
                              foregroundColor: Colors.white,
                            ),
                            FloatingActionButton.small(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: const Icon(FontAwesomeIcons.plus),
                              backgroundColor: kActiveContainerColor,
                              foregroundColor: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReUseableContainer(
                    color: kInactiveContainerColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: smallTxt,
                        ),
                        Text(
                          age.toString(),
                          style: bigTxt,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FloatingActionButton.small(
                              onPressed: () {
                                if (age > 1) {
                                  setState(() {
                                    age--;
                                  });
                                }
                              },
                              child: const Icon(FontAwesomeIcons.minus),
                              backgroundColor: kActiveContainerColor,
                              foregroundColor: Colors.white,
                            ),
                            FloatingActionButton.small(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: const Icon(FontAwesomeIcons.plus),
                              backgroundColor: kActiveContainerColor,
                              foregroundColor: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              try {
                if(selectedGender==null){
                  throw 'error';
                }
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                        ResultScreen(
                          calculator: Calculator(
                            height: (height/100.0),
                            weight: weight,
                            gender: selectedGender,
                            genderIcon: selectedGender == Gender.male ?
                            const Icon(
                              FontAwesomeIcons.mars,
                              size: 80,
                            ) : const Icon(
                          FontAwesomeIcons.mars,
                          size: 80,
                          ),
                          )..calculate(),
                        ),
                    ));
              }catch(e){
                Fluttertoast.showToast(
                    msg: "Please select gender",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.SNACKBAR,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.black,
                    textColor: Colors.white,
                    fontSize: 16.0
                );
              }
            },
            child: Container(
              color: kBottomNavColor,
              height: 50,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'CALCULATE BMI',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
