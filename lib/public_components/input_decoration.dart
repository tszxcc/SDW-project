import 'package:flutter/material.dart';

InputDecoration textFieldInputDecoration(String labelText, String hintText,
    {Icon? icon}) {
  return InputDecoration(
    prefixIcon: icon,
    hintText: hintText,
    hintStyle: TextStyle(
      color: Colors.black.withOpacity(0.33),
      fontSize: 13,
    ),
    labelText: labelText,
    labelStyle: TextStyle(
      color: Colors.black.withOpacity(0.33),
    ),
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    fillColor: Colors.white,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0),
      borderSide: BorderSide(color: Colors.black.withOpacity(0.33), width: 1.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0),
      borderSide: BorderSide(
        width: 1.0,
        color: Colors.black.withOpacity(0.33),
      ),
    ),
  );
}

TextStyle textStyleNormal(Color color, {double? fontsize}) {
  return TextStyle(
    color: color,
    fontSize: fontsize ?? 14,
    fontFamily: "Poppins",
    fontWeight: FontWeight.normal,
  );
}

TextStyle textStyleMedium() {
  return TextStyle(
    color: Colors.grey.shade800,
    fontSize: 14,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w500,
  );
}

TextStyle textStyleHeaderBold() {
  return const TextStyle(
    color: Colors.black,
    fontSize: 26,
    fontFamily: "Poppins",
    fontWeight: FontWeight.bold,
  );
}

TextStyle textStyleBold(Color color, double fontsize, Type double) {
  return TextStyle(
    color: color,
    fontSize: fontsize,
    fontFamily: "Poppins",
    fontWeight: FontWeight.bold,
  );
}

BoxShadow shadowList() {
  return BoxShadow(
      color: Colors.black.withOpacity(0.2),
      spreadRadius: 0,
      blurRadius: 7,
      offset: const Offset(4, 4));
}
