import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/controllers/grocery_controller.dart';
import 'package:flutter_task/envirmoent.dart';
import 'package:flutter_task/utils/app_dimensions.dart';
import 'package:flutter_task/utils/custom_widgets/custom_app_bar.dart';
import 'package:flutter_task/utils/theme_provider.dart';
import 'package:get/get.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GroceryController>(
      init: GroceryController(),
      builder: (controller) {
        return SafeArea(
          child: Padding(
            padding: AppDimensions.mSymetricPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
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
                SizedBox(
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
                                SizedBox(
                                    width: 95.w,
                                    child: Text(
                                      controller.address[index].addressTitle,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12.sp,
                                          overflow: TextOverflow.ellipsis),
                                      maxLines: 1,
                                    )),
                                SizedBox(
                                  width: 95.w,
                                  child: Text(
                                    controller.address[index].address,
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
                    itemCount: controller.address.length,
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Text(
                      'Explore by Category',
                      style: ThemeProvider.headTitle1,
                    ),
                    const Spacer(),
                    Text(
                      'See All(${controller.categories.length})',
                      style: ThemeProvider.hintTextStyle,
                    )
                  ],
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  height: 90.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return buildCategory(controller.categories[index].name,index);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 10.w);
                    },
                    itemCount: controller.categories.length,
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
                        SizedBox(
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
                                  const SizedBox(height: 15),
                                  SizedBox(
                                    width: 0.37.sw,
                                    child: Text(
                                      controller.deals[index].dealName,
                                      style: ThemeProvider.headTitle2,
                                      maxLines: 1,
                                    ),
                                  ),
                                  SizedBox(height: 5.h),
                                  Text(
                                    'Pieces ${controller.deals[index].pieces}',
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
                                        '${controller.deals[index].duration} Minutes Away',
                                        style: ThemeProvider.subTitle
                                            .copyWith(fontSize: 10.sp),
                                      )
                                    ],
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Text(
                                          '${Envirmoent.countrySymbolMoney} ${controller.deals[index].price}',
                                          style:
                                              ThemeProvider.importantTextStyle,
                                        ),
                                        SizedBox(width: 10.w),
                                        Text(
                                          '${Envirmoent.countrySymbolMoney} ${controller.deals[index].oldPrice}',
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
                        GestureDetector(
                          onTap: () {
                            controller.changeFav(controller.deals[index].dealId);
                          },
                          child: Container(
                            width: 25.w,
                            height: 25.w,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child:controller.favorites.contains(controller.deals[index].dealId)? Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 11.sp,
                            ): Icon(
                              Icons.favorite_border_outlined,
                              color: ThemeProvider.grey,
                              size: 11.sp,
                            ),
                          ),
                        )
                      ]);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 20.w);
                    },
                    itemCount: controller.deals.length,
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
      },
    );
  }

  SizedBox buildCategory(String categoryName,int index) {
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
            categoryName,
            style: TextStyle(fontSize: 9.sp),
          ),
        ],
      ),
    );
  }
}
