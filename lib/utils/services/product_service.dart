import 'dart:developer';
import 'dart:ffi';

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Barcode {
  static Future<ScannedProduct> getBarcodeInfo(String barcodenumber) async {
    final response = await http.get(
      Uri.https('api.barcodelookup.com', '/v2/products', {
        "barcode": barcodenumber,
        "formatted": "y",
        "key": "j9msa6kvyece596rkobwizrqs3swsb"
      }),
    );
    if (response.statusCode == 200)
      return ScannedProduct.fromJson(jsonDecode(response.body));
    else
      throw Exception('Failed to load barcode');
  }
}

class ScannedProduct {
  final String productName;

  ScannedProduct({this.productName});
  factory ScannedProduct.fromJson(Map<String, dynamic> json) {
    return ScannedProduct(
      productName: json['product_name'],
    );
  }

  static Future<ProductIngredients> getProductIngredients(
      String productName) async {
    final response = await http.post(
        Uri.https("trackapi.nutritionix.com", "/v2/natural/nutrients"),
        body: json.encode({"query": productName}),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
          "x-app-id": "02874004",
          "x-app-key": "263be2bb56593e508cbad2250052fc37"
        });
    if (response.statusCode == 200)
      return ProductIngredients.fromJson(jsonDecode(response.body));
    else
      throw Exception('Failed to load barcode');
  }
}

class ProductIngredients {
  final String foodName;
  final Double calories;
  final Double totalFat;
  final Double saturatedFat;
  final Double cholesterol;
  final Double sodium;
  final Double totalCarbohydrate;
  final Double dietaryFiber;
  final Double sugars;
  final Double protein;
  final Double potassium;
  final String photoUrl;
  ProductIngredients(
      {this.foodName,
      this.calories,
      this.totalFat,
      this.saturatedFat,
      this.cholesterol,
      this.sodium,
      this.totalCarbohydrate,
      this.dietaryFiber,
      this.sugars,
      this.protein,
      this.potassium,
      this.photoUrl});
  factory ProductIngredients.fromJson(Map<String, dynamic> json) {
    return ProductIngredients(
      foodName: json['food_name'],
      calories: json['nf_calories'],
      totalFat: json['nf_total_fat'],
      saturatedFat: json['nf_saturated_fat'],
      cholesterol: json['nf_cholesterol'],
      sodium: json['nf_sodium'],
      totalCarbohydrate: json['nf_total_carbohydrate'],
      dietaryFiber: json['nf_dietary_fiber'],
      sugars: json['nf_sugars'],
      protein: json['nf_protein'],
      potassium: json['nf_potassium'],
      photoUrl: json['photo.thumb'],
    );
  }
}
