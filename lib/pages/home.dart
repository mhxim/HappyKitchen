import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:happy_kitchen/pages/subpages/storage.dart';
import 'package:happy_kitchen/themes/lighttheme.dart';
import 'package:happy_kitchen/widgets/home_main_button.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.user}) : super(key: key);
  final User user;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 40.0, right: 40.0, top: 35.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: AppTheme.pageTitleMargin,
                      child: Text("Home", style: AppTheme.pageTitle),
                    ),
                    Padding(
                      padding: AppTheme.defaultMargin,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Welcome Back,", style: AppTheme.subTitle),
                          Text(
                            widget.user.displayName,
                            style: AppTheme.homeUsername,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Wrap(
                        spacing: 10.0,
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.spaceBetween,
                        children: [
                          HomeMainButton(
                              page: StoragePage(),
                              imageUrl: "assets/images/logo.png",
                              title: "Storage"),
                          HomeMainButton(
                              page: StoragePage(),
                              imageUrl: "assets/images/logo.png",
                              title: "Meals"),
                          HomeMainButton(
                              page: StoragePage(),
                              imageUrl: "assets/images/logo.png",
                              title: "Recepies"),
                          HomeMainButton(
                              page: StoragePage(),
                              imageUrl: "assets/images/logo.png",
                              title: "Order"),
                        ],
                      ),
                    )
                  ],
                ))));
  }
}
