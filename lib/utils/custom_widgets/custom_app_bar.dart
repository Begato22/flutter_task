import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/utils/custom_widgets/rps_custom_painter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomPaint(
          size: Size(0.3.sw, 35.h),
          painter: RPSCustomPainter(),
        ),
        const Spacer(),
        Container(
          height: 30.h,
          width: 30.h,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black),),
        )
      ],
    );
  }
}