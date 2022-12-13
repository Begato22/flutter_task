import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/utils/app_dimensions.dart';
import 'package:flutter_task/utils/theme_provider.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: AppDimensions.mSymetricPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomPaint(
                  size: Size(0.3.sw, 35.h),
                  painter: RPSCustomPainter(),
                ),
                Spacer(),
                Container(
                  height: 30.h,
                  width: 30.h,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),),
                )
              ],
            ),
            SizedBox(height: 10.h),
            Container(
              padding: EdgeInsets.all(5.h),
              decoration: BoxDecoration(
                  borderRadius: AppDimensions.borderRadius,
                  color: ThemeProvider.lightGrey,
                  border: Border.all(color: ThemeProvider.grey)),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: ThemeProvider.grey,
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    'Search in thousands of products',
                    style: ThemeProvider.subTitle,
                  )
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              height: 50.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(5.w),
                    width: 0.43.sw,
                    decoration: BoxDecoration(
                        borderRadius: AppDimensions.borderRadius,
                        border: Border.all(color: ThemeProvider.lightGrey)),
                    child: Row(
                      children: [
                        Container(
                          width: 40.w,
                          height: 40.w,
                          decoration: BoxDecoration(
                            borderRadius: AppDimensions.borderRadius,
                            color: Colors.teal,
                          ),
                        ),
                        SizedBox(width: 7.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: 95.w,
                                child: Text(
                                  'Home Address',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.sp,
                                      overflow: TextOverflow.ellipsis),
                                  maxLines: 1,
                                )),
                            Container(
                              width: 95.w,
                              child: Text(
                                'this location here founded',
                                style: TextStyle(
                                    fontSize: 11.sp,
                                    overflow: TextOverflow.ellipsis),
                                maxLines: 2,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 0.05.sw,
                  );
                },
                itemCount: 2,
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                Text(
                  'Explore by Category',
                  style: ThemeProvider.headTitle1,
                ),
                Spacer(),
                Text(
                  'See All(23)',
                  style: ThemeProvider.hintTextStyle,
                )
              ],
            ),
            SizedBox(height: 20.h),
            Container(
              height: 90.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return buildCategory();
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: 10.w);
                },
                itemCount: 36,
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              'Deals of the day',
              style: ThemeProvider.headTitle1,
            ),
            SizedBox(height: 20.h),
            SizedBox(
              height: 90.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Stack(children: [
                    Container(
                      width: 0.65.sw,
                      height: 100.h,
                      child: Row(
                        children: [
                          Container(
                            height: 80.h,
                            width: 80.h,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 15),
                              Container(
                                width: 0.37.sw,
                                child: Text(
                                  'Summer Sun Ice Cream Pack',
                                  style: ThemeProvider.headTitle2,
                                  maxLines: 1,
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                'Pieces 5',
                                style: TextStyle(fontSize: 12.sp),
                              ),
                              SizedBox(height: 5.h),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    size: 10.sp,
                                    color: ThemeProvider.grey,
                                  ),
                                  Text(
                                    '15 Minutes Away',
                                    style: ThemeProvider.subTitle
                                        .copyWith(fontSize: 10.sp),
                                  )
                                ],
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Text(
                                      '\$ 12',
                                      style: ThemeProvider.importantTextStyle,
                                    ),
                                    SizedBox(width: 10.w),
                                    Text(
                                      '\$ 15',
                                      style: ThemeProvider.lineTextStyle,
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 20.w,
                      height: 20.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 11.sp,
                      ),
                    )
                  ]);
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: 20.w);
                },
                itemCount: 5,
              ),
            ),
            SizedBox(height: 20.h),
            Expanded(
                child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.pink[200],
                  borderRadius: BorderRadius.circular(20.r)),
            )),

            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
  }

  SizedBox buildCategory() {
    return SizedBox(
      width: 60.w,
      child: Column(
        children: [
          Container(
            width: 60.w,
            height: 60.h,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: AppDimensions.borderRadius,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Data',
            style: TextStyle(fontSize: 9.sp),
          ),
        ],
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Color.fromARGB(255, 211, 159, 180)
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
