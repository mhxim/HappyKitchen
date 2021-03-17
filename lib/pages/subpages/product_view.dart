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
                      GestureDetector(
                        child: Text(widget.lastPage),
                        onTap: () => Navigator.pop(context),
                      ),
                      Padding(
                        padding: AppTheme.pageTitleMargin,
                        child: Text("Product", style: AppTheme.pageTitle),
                      ),
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            CarouselSlider(
                              items: [
                                Image.network(
                                    'https://picsum.photos/250?image=9'),
                                Image.network(
                                    'https://picsum.photos/250?image=2')
                              ],
                              options: CarouselOptions(
                                height: 300.0,
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
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Egg"),
                                  Wrap(
                                    children: [
                                      Container(
                                        child: Column(
                                          children: [
                                            Text("Title"),
                                            Text("Text"),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Nutrition Facts"),
                                Text("Amount Per Serving"),
                                Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text("Calories"),
                                          Text("72")
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ]))));
  }
}
