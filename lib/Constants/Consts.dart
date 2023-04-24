import 'package:flutter/material.dart';

const Color kScaffoldBg=Color(0xFF0c1234);
const Color kInactiveContainerColor=Color(0xFF272B4C);
const Color kActiveContainerColor=Color(0xFF131A3C);
const Color kBottomNavColor=Color(0xFFFF0E67);

enum Gender {
  male,
  female,
}

TextStyle bigTxt=TextStyle(
  fontSize: 60,
  fontWeight: FontWeight.bold,
);

TextStyle smallTxt=TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 20,
  color: Colors.grey,
);