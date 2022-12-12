import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ThemeProvider {
  static Color appColor = HexColor('#a40000');
  static final Map<int, Color> appColorMaped = {
  50: Color(0xFFa40000),
  100: Colors.red[100]!,
  200: Colors.red[200]!,
  300: Colors.red[300]!,
  400: Colors.red[400]!,
  500: Colors.red[500]!,
  600: Colors.red[600]!,
  700: Colors.red[700]!,
  800: Colors.red[800]!,
  900: Colors.red[900]!,
};
}