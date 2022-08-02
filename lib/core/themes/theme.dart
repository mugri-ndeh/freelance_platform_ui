import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'palette.dart';

ThemeData customLightTheme() {
  TextTheme montserrat = GoogleFonts.montserratTextTheme();
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
        color: Palette.black,
      ),
      headline6: base.headline6?.copyWith(
          fontSize: 12.8, color: Palette.black, fontWeight: FontWeight.bold),
      caption: base.caption?.copyWith(
        color: Palette.grey,
      ),
      bodyText1: base.bodyMedium?.copyWith(color: Palette.black, fontSize: 25),
      bodyText2: base.bodyText1?.copyWith(color: Palette.grey, fontSize: 25),
    );
  }

  final ThemeData lightTheme = ThemeData.light();
  return lightTheme.copyWith(
    appBarTheme: lightTheme.appBarTheme.copyWith(
        color: Palette.white,
        elevation: 0,
        titleSpacing: 0,
        iconTheme: const IconThemeData(
          color: Palette.grey,
        ),
        titleTextStyle: const TextStyle(
          color: Palette.grey,
          fontSize: 18,
        )),
    brightness: Brightness.light,
    hintColor: Palette.grey,
    textTheme: _customLightThemesTextTheme(montserrat),
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
    backgroundColor: Palette.scaffoldBg,
    tabBarTheme: lightTheme.tabBarTheme.copyWith(
      labelColor: Palette.purple,
      unselectedLabelColor: Palette.black,
    ),
    buttonTheme:
        lightTheme.buttonTheme.copyWith(buttonColor: Palette.purple.shade50),
    errorColor: Colors.red,
    // colorScheme: ColorScheme.fromSwatch(primarySwatch: Palette.purple).copyWith(),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 18, color: Palette.white),
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        elevation: 0,
        primary: Palette.purple.shade50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60),
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
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Palette.white,
      selectedItemColor: Palette.purple,
      unselectedItemColor: Palette.purple.shade100,
    ),
  );
}
