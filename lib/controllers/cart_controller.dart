import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_task/backend/json/json_data.dart';
import 'package:flutter_task/backend/models/cart_model.dart';
import 'package:flutter_task/backend/models/product_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  List<dynamic> product = [];
  List<dynamic> cart = [];
  List<CartModel> cartList = [];
  late int cartLen;

  final String _errMessage = 'Server Error';
  int total = 0;
  @override
  void onInit() {
    getCart();
    calcTotal();
    cartLen = cartList.length;
    super.onInit();
  }

  void getCart() {
    var requestBody = ProductModel.fromJson(JsonData.products);
    if (requestBody.status == 200) {
      for (var element in requestBody.data) {
        cart.add(element);
        cartList.add(CartModel(
            productId: element.id,
            quantatiy: Random().nextInt(7) + 1,
            price: element.price));
      }

      update();
    } else {
      debugPrint(_errMessage);
    }
  }

  void dec(int index) {
    cartList[index].quantatiy--;

    calcTotal();
    if (cartList[index].quantatiy == 0) {
      cartLen--;
      cartList.remove(cartList[index]);
    }
    update();
  }

  void inc(int index) {
    cartList[index].quantatiy++;
    cartLen++;
    calcTotal();
    update();
  }

  void calcTotal() {
    total = 0;
    for (var element in cartList) {
      total = total + int.parse(element.price) * element.quantatiy;
    }
  }
}
