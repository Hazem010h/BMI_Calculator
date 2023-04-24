import 'package:bmi_calc/Constants/Consts.dart';
import 'package:bmi_calc/Screens/FirstScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
      theme: ThemeData(
        brightness: Brightness.dark,
        sliderTheme: SliderThemeData(
            activeTrackColor: kBottomNavColor,
          thumbColor: kBottomNavColor
        ),
        scaffoldBackgroundColor: kScaffoldBg,
        appBarTheme: AppBarTheme(
          backgroundColor:kScaffoldBg ,
        ),
      ),
    );
  }
}

