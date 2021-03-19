import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:happy_kitchen/pages/subpages/storage_cell_add.dart';
import 'package:happy_kitchen/themes/lighttheme.dart';
import 'package:happy_kitchen/utils/services/product_service.dart';

class ProductView extends StatefulWidget {
  ProductView({Key key, this.productName, this.lastPage}) : super(key: key);
  final String productName;
  final String lastPage;
  @override
  _ProductViewState createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  ProductIngredients productIngredients;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => FutureBuilder(
        future: ScannedProduct.getProductIngredients(widget.productName),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
                body: SafeArea(
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding:
                            EdgeInsets.only(left: 40.0, right: 40.0, top: 20.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: AppTheme.routeMargin,
                                child: GestureDetector(
                                  child: Text(widget.lastPage,
                                      style: AppTheme.routeText),
                                  onTap: () => Navigator.pop(context),
                                ),
                              ),
                              Padding(
                                padding: AppTheme.pageTitleMargin,
                                child: Row(
                                  children: [
                                    Text("Product", style: AppTheme.pageTitle),
                                    Spacer(),
                                    GestureDetector(
                                      onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                StorageCellAdd(
                                                    productName: snapshot
                                                        .data.foodName
                                                        .toString())),
                                      ),
                                      child: Row(
                                        children: [Icon(Icons.add)],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: ListView(
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    Padding(
                                      padding: AppTheme.defaultMargin,
                                      child: CarouselSlider(
                                        items: [
                                          Image.network(snapshot.data.photoUrl
                                              .toString()),
                                        ],
                                        options: CarouselOptions(
                                          height: 275.0,
                                          viewportFraction: 0.8,
                                          initialPage: 0,
                                          enableInfiniteScroll: false,
                                          reverse: false,
                                          autoPlay: false,
                                          autoPlayInterval:
                                              Duration(seconds: 3),
                                          autoPlayAnimationDuration:
                                              Duration(milliseconds: 800),
                                          autoPlayCurve: Curves.fastOutSlowIn,
                                          enlargeCenterPage: true,
                                          scrollDirection: Axis.horizontal,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: AppTheme.defaultMargin,
                                      child: Text(
                                          snapshot.data.foodName.toString(),
                                          style: AppTheme.subTitle),
                                    ),
                                    Padding(
                                      padding: AppTheme.defaultMargin,
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Nutrition Facts",
                                                style: AppTheme.subTitle),
                                            Padding(
                                              padding: AppTheme.defaultMargin,
                                              child: Text("Amount Per Serving",
                                                  style:
                                                      AppTheme.statisticsText),
                                            ),
                                            Container(
                                              decoration: AppTheme.defaultBox,
                                              child: Padding(
                                                padding: EdgeInsets.all(15),
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 2.5),
                                                      child: Row(
                                                        children: [
                                                          Text("Calories",
                                                              style: AppTheme
                                                                  .statisticsTitle),
                                                          Spacer(),
                                                          Text(
                                                              snapshot
                                                                  .data.calories
                                                                  .toString(),
                                                              style: AppTheme
                                                                  .statisticsText)
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 2.5),
                                                      child: Row(
                                                        children: [
                                                          Text("Total Fat",
                                                              style: AppTheme
                                                                  .statisticsTitle),
                                                          Spacer(),
                                                          Text(
                                                              snapshot
                                                                  .data.totalFat
                                                                  .toString(),
                                                              style: AppTheme
                                                                  .statisticsText)
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 2.5),
                                                      child: Row(
                                                        children: [
                                                          Text("Saturated Fat",
                                                              style: AppTheme
                                                                  .statisticsTitle),
                                                          Spacer(),
                                                          Text(
                                                              snapshot.data
                                                                  .saturatedFat
                                                                  .toString(),
                                                              style: AppTheme
                                                                  .statisticsText)
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 2.5),
                                                      child: Row(
                                                        children: [
                                                          Text("Cholesterol",
                                                              style: AppTheme
                                                                  .statisticsTitle),
                                                          Spacer(),
                                                          Text(
                                                              snapshot.data
                                                                  .cholesterol
                                                                  .toString(),
                                                              style: AppTheme
                                                                  .statisticsText)
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 2.5),
                                                      child: Row(
                                                        children: [
                                                          Text("Sodium",
                                                              style: AppTheme
                                                                  .statisticsTitle),
                                                          Spacer(),
                                                          Text(
                                                              snapshot
                                                                  .data.sodium
                                                                  .toString(),
                                                              style: AppTheme
                                                                  .statisticsText)
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 2.5),
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                              "Total Carbohydrate",
                                                              style: AppTheme
                                                                  .statisticsTitle),
                                                          Spacer(),
                                                          Text(
                                                              snapshot.data
                                                                  .totalCarbohydrate
                                                                  .toString(),
                                                              style: AppTheme
                                                                  .statisticsText)
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 2.5),
                                                      child: Row(
                                                        children: [
                                                          Text("Dietary Fiber",
                                                              style: AppTheme
                                                                  .statisticsTitle),
                                                          Spacer(),
                                                          Text(
                                                              snapshot.data
                                                                  .dietaryFiber
                                                                  .toString(),
                                                              style: AppTheme
                                                                  .statisticsText)
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 2.5),
                                                      child: Row(
                                                        children: [
                                                          Text("Sugars",
                                                              style: AppTheme
                                                                  .statisticsTitle),
                                                          Spacer(),
                                                          Text(
                                                              snapshot
                                                                  .data.sugars
                                                                  .toString(),
                                                              style: AppTheme
                                                                  .statisticsText)
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 2.5),
                                                      child: Row(
                                                        children: [
                                                          Text("Protein",
                                                              style: AppTheme
                                                                  .statisticsTitle),
                                                          Spacer(),
                                                          Text(
                                                              snapshot
                                                                  .data.protein
                                                                  .toString(),
                                                              style: AppTheme
                                                                  .statisticsText)
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 2.5),
                                                      child: Row(
                                                        children: [
                                                          Text("Potassium",
                                                              style: AppTheme
                                                                  .statisticsTitle),
                                                          Spacer(),
                                                          Text(
                                                              snapshot
                                                                  .data.calories
                                                                  .toString(),
                                                              style: AppTheme
                                                                  .statisticsText)
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]))));
          } else {
            debugPrint('Loading Ingredients');
            return CircularProgressIndicator();
          }
        },
      );
}
