import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class ThemeProvider {
  //colors
  static Color appColor = HexColor('#d93e11');
  static Color lightGrey = HexColor('#f4f9fa');
  static Color grey = Colors.grey;
  static Color bannersColor = HexColor('#fec8bd');
  static Color addressColor = HexColor('#e3ddd6');
  static Color dealColor = HexColor('#fec8bd');
  static Color darkPinkColor = HexColor('#ee6a61');

  static final Map<int, Color> appColorMaped = {
    50: const Color(0xFFd93e11),
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

  static List<Color> appColorsList = [
    HexColor('#f9bdad'),
    HexColor('#fad96d'),
    HexColor('#ccb8ff'),
    HexColor('#b0eafd'),
    HexColor('#ff9dc2'),
    HexColor('#f9bdad'),
    HexColor('#fad96d'),
    HexColor('#ccb8ff'),
    HexColor('#b0eafd'),
    HexColor('#ff9dc2'),
    HexColor('#f9bdad'),
    HexColor('#fad96d'),
    HexColor('#ccb8ff'),
    HexColor('#b0eafd'),
    HexColor('#ff9dc2'),
    HexColor('#f9bdad'),
    HexColor('#fad96d'),
    HexColor('#ccb8ff'),
    HexColor('#b0eafd'),
    HexColor('#ff9dc2'),
  ];

//TextSyle

  static final subTitle = TextStyle(fontSize: 12.sp, color: ThemeProvider.grey);
  static final hintTextStyle = TextStyle(
      color: ThemeProvider.grey, fontWeight: FontWeight.bold, fontSize: 10.sp);
  static final headTitle1 =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp);
  static final headTitle2 = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 10.sp,
      overflow: TextOverflow.ellipsis);
  static final importantTextStyle = TextStyle(
      color: ThemeProvider.appColor,
      fontWeight: FontWeight.bold,
      fontSize: 12.sp);
  static final lineTextStyle = TextStyle(
      color: grey,
      fontWeight: FontWeight.bold,
      fontSize: 12.sp,
      decoration: TextDecoration.lineThrough);
}
