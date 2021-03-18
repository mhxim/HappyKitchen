import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:happy_kitchen/themes/lighttheme.dart';

class AccountInformation extends StatefulWidget {
  AccountInformation({Key key, this.user}) : super(key: key);
  final User user;

  @override
  _AccountInformationState createState() => _AccountInformationState();
}

class _AccountInformationState extends State<AccountInformation> {
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
                              Text("APP SETTINGS", style: AppTheme.routeText),
                          onTap: () => Navigator.pop(context),
                        ),
                      ),
                      Padding(
                        padding: AppTheme.pageTitleMargin,
                        child: Text("Account Information",
                            style: AppTheme.pageTitle),
                      ),
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            Container(
                              decoration: AppTheme.defaultBox,
                              child: Padding(
                                padding: EdgeInsets.all(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Name",
                                        style: AppTheme.statisticsTitle),
                                    Text(widget.user.displayName,
                                        style: AppTheme.statisticsText),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              decoration: AppTheme.defaultBox,
                              child: Padding(
                                padding: EdgeInsets.all(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Email",
                                        style: AppTheme.statisticsTitle),
                                    Text(widget.user.email,
                                        style: AppTheme.statisticsText),
                                  ],
                                ),
                              ),
                            ),

                            // TextFormField(
                            //   decoration:
                            //       InputDecoration(labelText: "New Password"),
                            // )
                          ],
                        ),
                      ),
                    ]))));
  }
}
