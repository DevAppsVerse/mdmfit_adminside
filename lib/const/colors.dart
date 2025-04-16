
import 'package:flutter/material.dart';

class TColor {
  static Color get primaryColor1 => const Color(0xff8CC63F); // Green for buttons & highlights
  static Color get primaryColor2 => const Color(0xffA3D65E); // Light Green variation
  static Color get secondaryColor1 => const Color(0xFF222222);
  static Color get secondaryColor2 => const Color(0xFF121212);
  //
  // static Color get primaryColor1 => const Color(0xff92A3FD);
  // static Color get primaryColor2 => const Color(0xff9DCEFF);
  // static Color get secondaryColor1 => const Color(0xffC58BF2);
  // static Color get secondaryColor2 => const Color(0xffEEA4CE);


  static List<Color> get primaryG => [ primaryColor2, primaryColor1 ];
  static List<Color> get secondaryG => [secondaryColor2, secondaryColor1];
  static List<Color> get grad => [
    Color(0xffA3D65E),
    Color(0xffe7f6c5),];

  static Color get black => const Color(0xff1D1617);
  static Color get gray => const Color(0xff786F72);
  static Color get white => Colors.white;
  static Color get lightGray => const Color(0xffF7F8F8);



}