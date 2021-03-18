import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:happy_kitchen/pages/subpages/settings.dart';
import 'package:happy_kitchen/themes/lighttheme.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key, this.user}) : super(key: key);
  final User user;

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isSwitched = false;
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
                    Row(
                      children: [
                        Padding(
                          padding: AppTheme.pageTitleMargin,
                          child: Text("Profile", style: AppTheme.pageTitle),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  AppSettings(user: widget.user),
                            ),
                          ),
                          child: Icon(
                            Icons.settings,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          Padding(
                            padding: AppTheme.defaultMargin,
                            child: Row(
                              children: [
                                Container(
                                  width: 65.0,
                                  height: 65.0,
                                  decoration: BoxDecoration(
                                    color: AppTheme.defaultSubColor,
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image:
                                            NetworkImage(widget.user.photoURL),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text(widget.user.displayName,
                                      style: AppTheme.homeUsername),
                                )
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: AppTheme.defaultMargin,
                                child: Text("Alerts", style: AppTheme.subTitle),
                              ),
                              Container(
                                decoration: AppTheme.defaultBox,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 5),
                                  child: Row(
                                    children: [
                                      Text("Expiry Alerts",
                                          style: AppTheme.statisticsText),
                                      Icon(Icons.add_alert),
                                      Spacer(),
                                      Switch(
                                        value: isSwitched,
                                        onChanged: (value) {
                                          setState(() {
                                            isSwitched = value;
                                            print(isSwitched);
                                          });
                                        },
                                      ),
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
                ))));
  }
}
