import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 211, 159, 180)
      ..style = PaintingStyle.fill
      ..strokeWidth = 3.0;

    Path path0 = Path();
    path0.moveTo(size.width * 0.1768333, size.height * 0.0877000);
    path0.cubicTo(
        size.width * 0.1252708,
        size.height * 0.1022000,
        size.width * 0.0939375,
        size.height * 0.1660500,
        size.width * 0.0790625,
        size.height * 0.1903000);
    path0.cubicTo(
        size.width * 0.0697292,
        size.height * 0.2104500,
        size.width * 0.0510833,
        size.height * 0.2455500,
        size.width * 0.0418125,
        size.height * 0.2728500);
    path0.cubicTo(
        size.width * 0.0298750,
        size.height * 0.2984500,
        size.width * 0.0189167,
        size.height * 0.3610000,
        size.width * 0.0112708,
        size.height * 0.3922500);
    path0.quadraticBezierTo(size.width * 0.0020625, size.height * 0.4401500,
        size.width * 0.0047083, size.height * 0.5333500);
    path0.lineTo(size.width * 0.0089792, size.height * 0.6274000);
    path0.quadraticBezierTo(size.width * 0.0178542, size.height * 0.7187000,
        size.width * 0.0264583, size.height * 0.7405000);
    path0.cubicTo(
        size.width * 0.0368542,
        size.height * 0.7703500,
        size.width * 0.0579583,
        size.height * 0.8311000,
        size.width * 0.0716042,
        size.height * 0.8501000);
    path0.cubicTo(
        size.width * 0.0965208,
        size.height * 0.8861000,
        size.width * 0.1215208,
        size.height * 0.9040000,
        size.width * 0.1381042,
        size.height * 0.9215000);
    path0.cubicTo(
        size.width * 0.3286250,
        size.height * 0.9198500,
        size.width * 0.7098333,
        size.height * 0.9129000,
        size.width * 0.9009792,
        size.height * 0.9149000);
    path0.cubicTo(
        size.width * 0.9144375,
        size.height * 0.9053500,
        size.width * 0.9217917,
        size.height * 0.9063000,
        size.width * 0.9352708,
        size.height * 0.8969000);
    path0.cubicTo(
        size.width * 0.9529375,
        size.height * 0.8668000,
        size.width * 0.9746458,
        size.height * 0.8110500,
        size.width * 0.9764583,
        size.height * 0.7565000);
    path0.quadraticBezierTo(size.width * 0.9803125, size.height * 0.7072000,
        size.width * 0.9631042, size.height * 0.6422500);
    path0.quadraticBezierTo(size.width * 0.8053958, size.height * 0.3288500,
        size.width * 0.7509375, size.height * 0.2171000);
    path0.cubicTo(
        size.width * 0.7436458,
        size.height * 0.2058000,
        size.width * 0.7241458,
        size.height * 0.1622000,
        size.width * 0.7160625,
        size.height * 0.1498000);
    path0.cubicTo(
        size.width * 0.7043750,
        size.height * 0.1419500,
        size.width * 0.6763125,
        size.height * 0.1159500,
        size.width * 0.6662500,
        size.height * 0.1140500);
    path0.cubicTo(
        size.width * 0.5353542,
        size.height * 0.1164000,
        size.width * 0.6796875,
        size.height * 0.0827500,
        size.width * 0.1768333,
        size.height * 0.0877000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
