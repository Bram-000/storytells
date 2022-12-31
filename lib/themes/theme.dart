import 'package:flutter/material.dart';
import 'package:material_color_generator/material_color_generator.dart';
import 'package:themed/themed.dart';

class STheme {
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
  static const topGreenCard = Color(0xFFF4D10B);
  static const bottomGreenCard = Color(0xFF17A6B2);

  //Lgbt
  static const topLCard = Color(0xFFFBA949);
  static const bottomLCard = Color(0xFFFF6355);

  //Gold
  static const topGold = Color(0xFFFFD700);
  static const bottomGold = Color(0xFFBFAB40);
  //Silver
  static const topSilver = Color(0xFFC0C0C0);
  static const bottomSilver = Color(0xFFA0A0A0);
  //Bronze
  static const topBronze = Color(0xFFCA6F1E);
  static const bottomBronze = Color(0xFFA5774F);

  //Comment
  static const commentLight = Color(0xFFEBEDEF);
  static const commentDark = Color(0xFF5D6D7E);
  //Categories
  static const angry = Color(0xFF7CCE9F);
  static const disgusting = Color(0xFF85C1E9);
  static const dramatic = Color(0xFFADB6BE);
  static const funny = Color(0xFFF7DC6F);
  static const happy = Color(0xFFEFB179);
  static const love = Color(0xFFEB6F62);
  static const other = Color(0xFFC39BD2);
  static const pride = Color(0xFFEBDEEF);
  static const sad = Color(0xFFF8C470);
  static const scary = Color(0xFF82DFAA);

  //Text styles
  static const cardRowStyle = TextStyleRef(
    TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: STheme.white),
  );

  static const categoryListStyle = TextStyleRef(
    TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: STheme.white),
  );

  static const appBarTitleStyle = TextStyleRef(
    TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: STheme.white),
  );

  //Main theme
  static var mainTheme = ThemeData(
    primarySwatch: generateMaterialColor(color: Colors.blue),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: commentDark, unselectedItemColor: topSilver),
    scaffoldBackgroundColor: const Color(0xFFFDFEFE),
  );
}
