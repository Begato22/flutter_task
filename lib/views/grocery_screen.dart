import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
          children: [
            SizedBox(height: 10.h),
            Container(
              padding: EdgeInsets.all(7.h),
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
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
