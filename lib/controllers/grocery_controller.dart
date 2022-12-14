import 'package:flutter/material.dart';
import 'package:flutter_task/backend/json/json_data.dart';
import 'package:flutter_task/backend/models/address_model.dart';
import 'package:flutter_task/backend/models/category_model.dart';
import 'package:flutter_task/backend/models/deal_model.dart';
import 'package:get/get.dart';

class GroceryController extends GetxController {
  List<dynamic> address = [];
  List<dynamic> categories = [];
  List<dynamic> deals = [];
  List<int> favorites = [];

  final String _errMessage = 'Server Error';

  @override
  void onInit() {
    getAddress();
    getCategory();
    getDeals();
    super.onInit();
  }

  void getAddress() {
    var requestBody = AddressModel.fromJson(JsonData.address);
    if (requestBody.status == 200) {
      for (var element in requestBody.data) {
        address.add(element);
      }
      update();
    } else {
      debugPrint(_errMessage);
    }
  }

  void getCategory() {
    var requestBody = CategoryModel.fromJson(JsonData.category);
    if (requestBody.status == 200) {
      for (var element in requestBody.data) {
        categories.add(element);
      }
      update();
    } else {
      debugPrint(_errMessage);
    }
  }

  void getDeals() {
    var requestBody = DealModel.fromJson(JsonData.deals);
    if (requestBody.status == 200) {
      for (var element in requestBody.data) {
        deals.add(element);
      }
      update();
    } else {
      debugPrint(_errMessage);
    }
  }

  void addToFav(int id) {
    favorites.add(id);
  }

  bool removeToFav(int id) {
    return favorites.remove(id);
  }

  void changeFav(int id) {
    if (favorites.contains(id)) {
      removeToFav(id);
    } else {
      addToFav(id);
    }
    update();
  }
}
