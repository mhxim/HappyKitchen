import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:happy_kitchen/pages/subpages/storage.dart';
import 'package:happy_kitchen/widgets/home_main_button.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.username}) : super(key: key);
  final String username;

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
                    Text("Home"),
                    new Text("Welcome Back,"),
                    new Text(widget.username),
                    Expanded(
                      child: Wrap(
                        children: [HomeMainButton(page: StoragePage())],
                      ),
                    )
                  ],
                ))));
  }
}
