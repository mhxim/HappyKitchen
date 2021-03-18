import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:happy_kitchen/themes/lighttheme.dart';

class ProductView extends StatefulWidget {
  ProductView({Key key, this.id, this.lastPage}) : super(key: key);
  final String id;
  final String lastPage;
  @override
  _ProductViewState createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 40.0, right: 40.0, top: 20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: AppTheme.routeMargin,
                        child: GestureDetector(
                          child:
                              Text(widget.lastPage, style: AppTheme.routeText),
                          onTap: () => Navigator.pop(context),
                        ),
                      ),
                      Padding(
                        padding: AppTheme.pageTitleMargin,
                        child: Text("Product", style: AppTheme.pageTitle),
                      ),
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            Padding(
                              padding: AppTheme.defaultMargin,
                              child: CarouselSlider(
                                items: [
                                  Image.network(
                                      'https://picsum.photos/250?image=9'),
                                  Image.network(
                                      'https://picsum.photos/250?image=2')
                                ],
                                options: CarouselOptions(
                                  height: 275.0,
                                  viewportFraction: 0.8,
                                  initialPage: 0,
                                  enableInfiniteScroll: true,
                                  reverse: false,
                                  autoPlay: true,
                                  autoPlayInterval: Duration(seconds: 3),
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
                              child: Container(
                                decoration: AppTheme.defaultBox,
                                child: Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: AppTheme.defaultMargin,
                                        child: Text("Egg",
                                            style: AppTheme.subTitle),
                                      ),
                                      Wrap(
                                        spacing: 10,
                                        children: [
                                          Padding(
                                            padding: AppTheme.defaultMargin,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Company",
                                                    style: AppTheme
                                                        .statisticsTitle),
                                                Text("EggCompany 5000",
                                                    style: AppTheme
                                                        .statisticsText),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: AppTheme.defaultMargin,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Expiry",
                                                    style: AppTheme
                                                        .statisticsTitle),
                                                Text("10.12.2021",
                                                    style: AppTheme
                                                        .statisticsText),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: AppTheme.defaultMargin,
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Nutrition Facts",
                                        style: AppTheme.subTitle),
                                    Padding(
                                      padding: AppTheme.defaultMargin,
                                      child: Text("Amount Per Serving",
                                          style: AppTheme.statisticsText),
                                    ),
                                    Container(
                                      decoration: AppTheme.defaultBox,
                                      child: Padding(
                                        padding: EdgeInsets.all(15),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 2.5),
                                              child: Row(
                                                children: [
                                                  Text("Calories",
                                                      style: AppTheme
                                                          .statisticsTitle),
                                                  Spacer(),
                                                  Text("72",
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
  }
}
