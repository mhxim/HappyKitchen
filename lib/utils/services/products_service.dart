import 'package:flutter/material.dart';

class ScannedProduct {
  final int quantity;
  final String title;
  final String id;

  ScannedProduct({
    @required this.quantity,
    @required this.title,
    @required this.id,
  });

  static List<ScannedProduct> get items => [
        ScannedProduct(quantity: 3, title: "Egg", id: "aaaa1"),
        ScannedProduct(quantity: 2, title: "Rice", id: "aaaa2"),
        ScannedProduct(quantity: 6, title: "Water", id: "aaaa3"),
        ScannedProduct(quantity: 3, title: "Coffee", id: "aaaa4"),
      ];
}
