import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  Product({this.name, this.expiry});
  String name;
  Timestamp expiry;
}
