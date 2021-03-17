import 'package:flutter/material.dart';
import 'package:happy_kitchen/pages/subpages/data_protection.dart';

import 'account_information.dart';

class AppSettings extends StatelessWidget {
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
                        child: Text("PROFILE"),
                        onTap: () => Navigator.pop(context),
                      ),
                      Text("App Settings"),
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      AccountInformation(),
                                ),
                              ),
                              child: Container(
                                child: Row(
                                  children: [
                                    Text("Account Information"),
                                    Icon(Icons.arrow_right)
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      DataProtection(),
                                ),
                              ),
                              child: Container(
                                child: Row(
                                  children: [
                                    Text("Data Protection"),
                                    Icon(Icons.arrow_right)
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
