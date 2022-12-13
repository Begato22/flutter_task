import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class ThemeProvider {

  //colors
  static Color appColor = HexColor('#a40000');
  static Color lightGrey = Colors.grey.shade200;
  static Color grey = Colors.grey.shade400;


  static final Map<int, Color> appColorMaped = {
  50: const Color(0xFFa40000),
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

//TextSyle

static final subTitle = TextStyle(fontSize: 12.sp,color: ThemeProvider.grey);
}