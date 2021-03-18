import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ScannedProduct {
  final DateTime expiry;
  final String title;
  final String id;

  ScannedProduct({
    @required this.expiry,
    @required this.title,
    @required this.id,
  });

  static List<ScannedProduct> get items => [
        ScannedProduct(
            expiry: DateTime.parse("2021-09-20 00:00:00Z"),
            title: "Egg",
            id: "aaaa1"),
        ScannedProduct(
            expiry: DateTime.parse("2021-09-20 00:00:00Z"),
            title: "Rice",
            id: "aaaa2"),
        ScannedProduct(
            expiry: DateTime.parse("2021-09-20 00:00:00Z"),
            title: "Water",
            id: "aaaa3"),
        ScannedProduct(
            expiry: DateTime.parse("2021-09-20 00:00:00Z"),
            title: "Coffee",
            id: "aaaa4"),
      ];
}
