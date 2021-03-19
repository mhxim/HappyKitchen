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
    log(response.body.toString());
    if (response.statusCode == 200)
      return ScannedProduct.fromJson(jsonDecode(response.body));
  }
}

class ScannedProduct {
  final String productName;

  ScannedProduct({this.productName});
  factory ScannedProduct.fromJson(Map<String, dynamic> json) {
    return ScannedProduct(productName: json["products"][0]["product_name"]);
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
    log(productName);
    log(response.body.toString());
    if (response.statusCode == 200)
      return ProductIngredients.fromJson(jsonDecode(response.body));
  }
}

class ProductIngredients {
  var foodName;
  var calories;
  var totalFat;
  var saturatedFat;
  var cholesterol;
  var sodium;
  var totalCarbohydrate;
  var dietaryFiber;
  var sugars;
  var protein;
  var potassium;
  var photoUrl;
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
      foodName: json['foods'][0]["food_name"],
      calories: json['foods'][0]['nf_calories'],
      totalFat: json['foods'][0]['nf_total_fat'],
      saturatedFat: json['foods'][0]['nf_saturated_fat'],
      cholesterol: json['foods'][0]['nf_cholesterol'],
      sodium: json['foods'][0]['nf_sodium'],
      totalCarbohydrate: json['foods'][0]['nf_total_carbohydrate'],
      dietaryFiber: json['foods'][0]['nf_dietary_fiber'],
      sugars: json['foods'][0]['nf_sugars'],
      protein: json['foods'][0]['nf_protein'],
      potassium: json['foods'][0]['nf_potassium'],
      photoUrl: json['foods'][0]['photo']['thumb'],
    );
  }
}
