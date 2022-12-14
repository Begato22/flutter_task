import 'package:flutter/material.dart';
import 'package:flutter_task/views/cart_screen.dart';
import 'package:flutter_task/views/favorites_screen.dart';
import 'package:flutter_task/views/grocery_screen.dart';
import 'package:flutter_task/views/news_screen.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:get/get.dart';

class TabsController extends GetxController {
  int bottomNavIndex = 0;
  List<Widget> screens = const [
    GroceryScreen(),
    NewsScreen(),
    // ShopScreen(),
    FavoritesScreen(),
    CartScreen()
  ];
  List<String> tabsLabel = [
    'Grocery',
    'News',
    'Favorites',
    'Cart',
  ];
  List<IconData> icons = [
    Icons.shopping_bag_outlined,
    Icons.notifications_none,
    Linecons.heart,
    Linecons.wallet,
  ];
  void changeIndex(int index) {
    bottomNavIndex = index;
    update();
  }
}
