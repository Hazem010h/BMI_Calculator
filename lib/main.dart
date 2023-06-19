import 'package:bmi_calc/Constants/Consts.dart';
import 'package:bmi_calc/Screens/FirstScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const FirstScreen(),
      theme: ThemeData(
        brightness: Brightness.dark,
        sliderTheme: const SliderThemeData(
          activeTrackColor: kBottomNavColor,
          thumbColor: kBottomNavColor,
        ),
        scaffoldBackgroundColor: kScaffoldBg,
        appBarTheme: const AppBarTheme(
          backgroundColor: kScaffoldBg,
        ),
      ),
    );
  }
}
