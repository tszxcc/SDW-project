import 'package:flutter/material.dart';
import 'package:mhcs/helper/constant.dart';

ThemeData theme() {
  return ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme(),
    scrollbarTheme: const ScrollbarThemeData(),
    fontFamily: "Poppins",
    // dialogTheme: dialogTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecoration(),
    //brightness: Brightness.dark,
    primaryColor: kPrimaryColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: kPrimaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        textStyle: const TextStyle(
          fontSize: 12,
        ),
        // side: BorderSide(color: kPrimaryColor),
      ),
    ),
  );
}

dialogTheme() {
  return Container();
}

//setup design for input box
InputDecorationTheme inputDecoration() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: const BorderSide(color: kTextColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
      // floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      border: outlineInputBorder,
      fillColor: Colors.white,
      filled: true);
}

TextTheme textTheme() {
  return const TextTheme(
    bodyText1: TextStyle(color: kTextLightThemeColor),
    bodyText2: TextStyle(color: kTextLightThemeColor),
  );
}

//setup design for app bar
AppBarTheme appBarTheme() {
  return const AppBarTheme(
    iconTheme: IconThemeData(color: Colors.black),
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
  );
}
