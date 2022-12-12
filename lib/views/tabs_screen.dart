import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/controllers/tabs_controller.dart';
import 'package:flutter_task/utils/app_dimensions.dart';
import 'package:flutter_task/utils/theme_provider.dart';
import 'package:flutter_task/views/cart_screen.dart';
import 'package:flutter_task/views/favorites_screen.dart';
import 'package:flutter_task/views/grocery_screen.dart';
import 'package:flutter_task/views/news_screen.dart';
import 'package:flutter_task/views/shop_screen.dart';
import 'package:get/get.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TabsController>(
      init: TabsController(),
      builder: (controller) {
        return Scaffold(
          body: Container(
            child: controller.screens[controller.bottomNavIndex],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: ThemeProvider.appColor,
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: AnimatedBottomNavigationBar.builder(
            activeIndex: controller.bottomNavIndex,
            backgroundColor: Colors.grey.shade200,
            height: 65.h,
            gapLocation: GapLocation.center,
            notchMargin: 0,
            notchSmoothness: NotchSmoothness.sharpEdge,
            onTap: (index) {
              controller.changeIndex(index);
            },
            itemCount: controller.icons.length,
            tabBuilder: (int index, bool isActive) {
              final color =
                  isActive ? ThemeProvider.appColor : Colors.grey.shade400;
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
            child: AutoSizeText(
              "brightness $index",
              maxLines: 1,
              style: TextStyle(color: color),
              group: AutoSizeGroup(),
            ),
          )
        ],
      ),
    );
  }
}
