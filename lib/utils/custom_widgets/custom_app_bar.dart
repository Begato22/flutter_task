import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/controllers/grocery_controller.dart';
import 'package:flutter_task/utils/custom_widgets/rps_custom_painter.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(GroceryController());
    return Row(
      children: [
        Stack(alignment: AlignmentDirectional.centerStart, children: [
          CustomPaint(
            size: Size(0.3.sw, 38.h),
            painter: RPSCustomPainter(),
          ),
          Row(
            children: [
              SizedBox(
                width: 5.w,
              ),
              Icon(
                Icons.location_on_outlined,
                size: 15.sp,
                color: Colors.white,
              ),
              SizedBox(
                  width: 65.w,
                  child: Text(
                    '${Get.find<GroceryController>().address[0].address}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.sp,
                    ),
                    maxLines: 1,
                  )),
            ],
          ),
        ]),
        const Spacer(),
        Container(
          height: 30.h,
          width: 30.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black),
          ),
        )
      ],
    );
  }
}
