import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'palette.dart';

ThemeData customLightTheme() {
  TextTheme poppins = GoogleFonts.poppinsTextTheme();
  TextTheme _customLightThemesTextTheme(TextTheme base) {
    return base.copyWith(
      headline1: base.headline1?.copyWith(
        fontSize: 39.06,
        color: Palette.black,
        fontWeight: FontWeight.bold,
      ),
      headline2: base.headline2?.copyWith(
        fontSize: 31.25,
        color: Palette.black,
        fontWeight: FontWeight.bold,
      ),
      headline3: base.headline3?.copyWith(fontSize: 25.0, color: Palette.black),
      headline4: base.headline4?.copyWith(
          fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
      headline5: base.headline5?.copyWith(
        fontSize: 16.0,
        color: Colors.white,
      ),
      headline6: base.headline6?.copyWith(
          fontSize: 12.8, color: Palette.black, fontWeight: FontWeight.bold),
      caption: base.caption?.copyWith(
        color: Palette.grey,
      ),
      bodyText1: base.bodyMedium?.copyWith(color: Palette.black, fontSize: 25),
      bodyText2: base.bodyText1?.copyWith(color: Palette.grey, fontSize: 25),
      bodyMedium: base.bodyMedium?.copyWith(
          fontSize: 25, color: Palette.black, fontWeight: FontWeight.bold),
      bodySmall: base.bodySmall?.copyWith(
          fontSize: 16, color: Palette.black, fontWeight: FontWeight.bold),
      bodyLarge: base.bodyLarge?.copyWith(
          fontSize: 39.06, color: Palette.black, fontWeight: FontWeight.bold),
    );
  }

  final ThemeData lightTheme = ThemeData.light();
  return lightTheme.copyWith(
    // appBarTheme: lightTheme.appBarTheme.copyWith(iconTheme: ),
    brightness: Brightness.light,
    hintColor: Palette.grey,
    textTheme: _customLightThemesTextTheme(poppins),
    primaryColor: Palette.purple,
    indicatorColor: Palette.purple,
    dividerColor: Palette.grey,
    scaffoldBackgroundColor: Palette.scaffoldBg,
    primaryIconTheme: lightTheme.primaryIconTheme.copyWith(
      color: Palette.grey,
      size: 25,
    ),
    iconTheme: lightTheme.iconTheme.copyWith(
      color: Palette.black,
    ),
    backgroundColor: Palette.white,
    tabBarTheme: lightTheme.tabBarTheme.copyWith(
      labelColor: Palette.purple,
      unselectedLabelColor: Palette.black,
    ),
    buttonTheme:
        lightTheme.buttonTheme.copyWith(buttonColor: Palette.purple.shade50),
    errorColor: Colors.red,
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Palette.purple),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Palette.purple),
        backgroundColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    ),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Palette.black),
      color: Palette.white,
      elevation: 0,
      titleSpacing: 0,
      titleTextStyle: TextStyle(
        color: Palette.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
