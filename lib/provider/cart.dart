import 'package:e_commerce/model/product.dart';
import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  List selectedProducts = [];
  add(Product items) {
    selectedProducts.add(items);
    notifyListeners();
  }


}


