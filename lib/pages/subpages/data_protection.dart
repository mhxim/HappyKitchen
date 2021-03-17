import 'package:flutter/material.dart';

class DataProtection extends StatelessWidget {
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
                        child: Text("APP SETTINGS"),
                        onTap: () => Navigator.pop(context),
                      ),
                      Text("Data Protection"),
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [Text("We don't sell your data.")],
                        ),
                      ),
                    ]))));
  }
}
