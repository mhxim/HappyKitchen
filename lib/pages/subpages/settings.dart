import 'package:flutter/material.dart';
import 'package:happy_kitchen/pages/subpages/data_protection.dart';
import 'package:happy_kitchen/themes/lighttheme.dart';

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
                      Padding(
                        padding: AppTheme.routeMargin,
                        child: GestureDetector(
                          child: Text("PROFILE", style: AppTheme.routeText),
                          onTap: () => Navigator.pop(context),
                        ),
                      ),
                      Padding(
                        padding: AppTheme.pageTitleMargin,
                        child: Text("App Settings", style: AppTheme.pageTitle),
                      ),
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
                                decoration: AppTheme.defaultBox,
                                child: Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Row(
                                    children: [
                                      Text("Account Information",
                                          style: AppTheme.settingsText),
                                      Icon(Icons.arrow_right)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      DataProtection(),
                                ),
                              ),
                              child: Container(
                                decoration: AppTheme.defaultBox,
                                child: Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Row(
                                    children: [
                                      Text("Data Protection",
                                          style: AppTheme.settingsText),
                                      Icon(Icons.arrow_right)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              onTap: () => {},
                              child: Container(
                                decoration: AppTheme.defaultBox,
                                child: Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Row(
                                    children: [
                                      Text("Logout",
                                          style: AppTheme.settingsText),
                                      Icon(Icons.arrow_right)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]))));
  }
}
