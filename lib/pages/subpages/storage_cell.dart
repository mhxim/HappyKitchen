import 'package:flutter/material.dart';
import 'package:happy_kitchen/pages/subpages/product_view.dart';

class StorageCell extends StatefulWidget {
  StorageCell({Key key, this.id}) : super(key: key);
  final String id;
  @override
  _StorageCellState createState() => _StorageCellState();
}

class _StorageCellState extends State<StorageCell> {
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
                        child: Text("STORAGE"),
                        onTap: () => Navigator.pop(context),
                      ),
                      Text("Fridge 1"),
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Statistics"),
                                Container(
                                  height: 65.0,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Storage Units"),
                                            Text("4 registered")
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Products"),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text("Quantity"),
                                          Text("Product"),
                                          Text("Actions")
                                        ],
                                      ),
                                      GestureDetector(
                                        onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                ProductView(
                                                    id: "ProductID",
                                                    lastPage: widget.id),
                                          ),
                                        ),
                                        child: Container(
                                          child: Row(
                                            children: [
                                              Text("3"),
                                              Text("Egg"),
                                              Text("Icon")
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ]))));
  }
}
