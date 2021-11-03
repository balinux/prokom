import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  int _cart = 0;

  int get getEcommerceCart => _cart;

  void addecmommerceCart(int data) {
    _cart += data;
    notifyListeners();
  }
}
