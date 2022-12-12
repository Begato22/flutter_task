import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/utils/theme_provider.dart';
import 'package:flutter_task/views/cart_screen.dart';
import 'package:flutter_task/views/favorites_screen.dart';
import 'package:flutter_task/views/grocery_screen.dart';
import 'package:flutter_task/views/news_screen.dart';
import 'package:flutter_task/views/shop_screen.dart';
import 'package:hexcolor/hexcolor.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _bottomNavIndex = 0;
  List<Widget> screens = [
    GroceryScreen(),
    NewsScreen(),
    ShopScreen(),
    FavoritesScreen(),
    CartScreen()
  ];
  List<IconData> icons = [
    Icons.shop,
    Icons.notification_important_outlined,
    // Icons.shopping_basket_outlined,
    Icons.heart_broken_outlined,
    Icons.badge_outlined,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: screens[_bottomNavIndex],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: ThemeProvider.appColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        activeIndex: _bottomNavIndex,
        backgroundColor: Colors.grey.shade200,
        height: 65.h,
        gapLocation: GapLocation.center,
        notchMargin: 0,
        notchSmoothness: NotchSmoothness.sharpEdge,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        itemCount: icons.length,
        tabBuilder: (int index, bool isActive) {
          final color = isActive ? ThemeProvider.appColor : Colors.grey.shade400;
          return Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icons[index],
                  size: 24.sp,
                  color: color,
                ),
                const SizedBox(height: 4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.w),
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
        },
        //other params
      ),
    );
  }
}
