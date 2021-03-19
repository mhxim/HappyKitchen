import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ScannedProduct {
  final DateTime expiry;
  final String title;

  ScannedProduct({
    @required this.expiry,
    @required this.title,
  });

  static List<ScannedProduct> get items => [
        ScannedProduct(
          expiry: DateTime.parse("2021-09-20 00:00:00Z"),
          title: "Egg",
        ),
        ScannedProduct(
          expiry: DateTime.parse("2021-09-20 00:00:00Z"),
          title: "Rice",
        ),
        ScannedProduct(
          expiry: DateTime.parse("2021-09-20 00:00:00Z"),
          title: "Water",
        ),
        ScannedProduct(
          expiry: DateTime.parse("2021-09-20 00:00:00Z"),
          title: "Coffee",
        ),
      ];
}
