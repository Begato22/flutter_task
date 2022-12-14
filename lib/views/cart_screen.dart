import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/utils/app_dimensions.dart';
import 'package:flutter_task/utils/custom_widgets/custom_app_bar.dart';
import 'package:flutter_task/utils/theme_provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: AppDimensions.mSymetricPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          SizedBox(height: 30.h),
          Text(
            'Cart',
            style: ThemeProvider.headTitle1,
          ),
          SizedBox(height: 30.h),
          SizedBox(
            height: 0.73.sh,
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Container(
                      height: 60.h,
                      width: 60.h,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: AppDimensions.borderRadius,
                      ),
                    ),
                    SizedBox(width: 40.w),
                    Container(
                      height: 60.h,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const Text('Turkish Steak'),
                          Text(
                            '173 Grams',
                            style: ThemeProvider.hintTextStyle,
                          ),
                          Text(
                            '\$ 25',
                            style: TextStyle(color: ThemeProvider.appColor),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 0.28.sw,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildButtonCart(Icons.remove),
                          Text(
                            '3',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.sp),
                          ),
                          buildButtonCart(Icons.add),
                        ],
                      ),
                    )
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: 20.h);
              },
              itemCount: 10,
            ),
          ),
        ],
      ),
    ));
  }

  Container buildButtonCart(IconData iconData) {
    return Container(
      width: 30.w,
      height: 30.h,
      decoration: BoxDecoration(
        color: Colors.teal[100],
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Icon(
        iconData,
        color: Colors.teal[200],
      ),
    );
  }
}
