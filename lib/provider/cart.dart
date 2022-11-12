import 'package:e_commerce/model/product.dart';
import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  List selectedProducts = [];
  double price = 0;

  add(Product items) {
    selectedProducts.add(items);
    price += items.price;

    notifyListeners();
  }
  delete(Product items) {
    selectedProducts.remove(items);
    price -= items.price.round();

    notifyListeners();
  }


}


