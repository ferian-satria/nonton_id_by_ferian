import 'package:flutter/material.dart';

class appColors {
  static Color get background => const Color(0XFF1C1A29);
  static Color get second => const Color(0XFF2F2C44);
  static LinearGradient get accent => const LinearGradient(
      colors: [Color(0XFF867AD2), Color.fromARGB(255, 105, 93, 182)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter);
  static Color get white_op20 => const Color(0XFFFFFFFF).withOpacity(20);
  static Color get white_op60 => const Color(0XFFFFFFFF).withOpacity(60);
}