import 'package:flutter/material.dart';
import 'package:happy_kitchen/widgets/storage_box.dart';
import 'package:happy_kitchen/widgets/stat_box.dart';
import 'package:happy_kitchen/themes/lighttheme.dart';

class StoragePage extends StatefulWidget {
  @override
  _StoragePageState createState() => _StoragePageState();
}

class _StoragePageState extends State<StoragePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 40.0, top: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: AppTheme.routeMargin,
                      child: GestureDetector(
                        child: Text("HOME", style: AppTheme.routeText),
                        onTap: () => Navigator.pop(context),
                      ),
                    ),
                    Padding(
                      padding: AppTheme.pageTitleMargin,
                      child: Text("Storage", style: AppTheme.pageTitle),
                    ),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: AppTheme.defaultMargin,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: AppTheme.defaultMargin,
                                      child: Text("Statistics",
                                          style: AppTheme.subTitle),
                                    ),
                                    Container(
                                      height: 75.0,
                                      child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          StatBox(
                                              title: "Storage Units",
                                              text: "4 registered"),
                                          StatBox(
                                              title: "Storage Units",
                                              text: "4 registered")
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: AppTheme.defaultMargin,
                                  child:
                                      Text("Units", style: AppTheme.subTitle),
                                ),
                                Container(
                                  decoration: AppTheme.defaultBox,
                                  width:
                                      MediaQuery.of(context).size.width - 80.0,
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Wrap(
                                      children: [
                                        StorageBox(
                                            title: "Fridge 1", id: "abc"),
                                        StorageBox(
                                            title: "Fridge 1", id: "abc"),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ))));
  }
}
