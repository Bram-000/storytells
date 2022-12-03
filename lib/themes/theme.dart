import 'package:flutter/material.dart';
import 'package:themed/themed.dart';

class STTTheme {
  //Basic colors
  static const white = ColorRef(Colors.white);
  static const blue = ColorRef(Colors.blue);
  static const green = ColorRef(Colors.green);

  //Card colors
  //Male
  static const topBlueCard = Color(0xFF1488CC);
  static const bottomBlueCard = Color(0xFF2B32B2);

  //Female
  static const topPinkCard = Color(0xFFEC008C);
  static const bottomPinkCard = Color(0xFFFC6767);

  //Other
  static const topGreenCard = Color(0xFFA8FF78);
  static const bottomGreenCard = Color(0xFF78FFd6);

  //Lgbt
  static const purpleCard = Color(0xFF9C4F96);
  static const redCard = Color(0xFFFF6355);
  static const orangeCard = Color(0xFFFBA949);
  static const yellowCard = Color(0xFFFAE442);
  static const greenCard = Color(0xFF8BD448);
  static const blueCard = Color(0xFF2AA8F2);

  //Text style
  static const cardRowStyle = TextStyleRef(
    TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: STTTheme.white),
  );
}
