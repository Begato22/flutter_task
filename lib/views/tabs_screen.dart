import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/controllers/cart_controller.dart';
import 'package:flutter_task/controllers/tabs_controller.dart';
import 'package:flutter_task/envirmoent.dart';
import 'package:flutter_task/utils/app_dimensions.dart';
import 'package:flutter_task/utils/images.dart';
import 'package:flutter_task/utils/theme_provider.dart';
import 'package:get/get.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TabsController>(
      init: TabsController(),
      builder: (controller) {
        return Scaffold(
          body: Container(
            child: controller.screens[controller.bottomNavIndex],
          ),
          floatingActionButton: GetBuilder<CartController>(
            init: CartController(),
            builder: (controller) {
              return FloatingActionButton(
                onPressed: () {},
                backgroundColor: ThemeProvider.appColor,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Image.asset(AppImages.cartIcon),
                    controller.total == 0
                        ? const SizedBox()
                        : Positioned(
                            top: 10.h,
                            left: 6.w,
                            child: Text(
                              '${Envirmoent.countrySymbolMoney}${Get.find<CartController>().total}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 9.sp),
                            ))
                  ],
                ),
              );
            },
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: AnimatedBottomNavigationBar.builder(
            activeIndex: controller.bottomNavIndex,
            backgroundColor: ThemeProvider.lightGrey,
            height: 40.h,
            gapLocation: GapLocation.center,
            notchMargin: 0,
            notchSmoothness: NotchSmoothness.sharpEdge,
            onTap: (index) {
              controller.changeIndex(index);
            },
            itemCount: controller.icons.length,
            tabBuilder: (int index, bool isActive) {
              final color =
                  isActive ? ThemeProvider.appColor : ThemeProvider.grey;
              return tabBuilder(index, color, controller);
            },
            //other params
          ),
        );
      },
    );
  }

  Widget tabBuilder(int index, Color color, TabsController controller) {
    return Padding(
      padding: AppDimensions.sSymetricPadding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            controller.icons[index],
            size: 24.sp,
            color: color,
          ),
          const SizedBox(height: 4),
          Padding(
            padding: AppDimensions.sSymetricPadding,
            child: Text(
              controller.tabsLabel[index],
              maxLines: 1,
              style: TextStyle(color: color, fontSize: 9.sp),
              // group: AutoSizeGroup(),
            ),
          )
        ],
      ),
    );
  }
}
