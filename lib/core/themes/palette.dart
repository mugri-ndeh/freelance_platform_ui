import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor purple = MaterialColor(
    0XFF9378FF, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0XFF9279FE), //10%
      100: Color(0XFFCABDFD), //20%
      200: Color(0XFFCABDFD), //20%
    },
  );
  //==========DARK THEME COLORS==========//
  static const Color scaffoldBg = Color(0XFFFAF9FE);
  static const Color black = Color(0XFF120E21);
  static const Color grey = Color(0XFF99879D);
  static const Color white = Color(0XFFFFFFFF);
  static const Color whitelt = Color(0XFFFAF9FE);
}
