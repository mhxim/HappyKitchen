import 'package:flutter/material.dart';
import 'package:happy_kitchen/pages/subpages/settings.dart';
import 'package:happy_kitchen/themes/lighttheme.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key, this.username}) : super(key: key);
  final String username;

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => AppSettings(),
                            ),
                          ),
                          child: Icon(Icons.settings),
                        )
                      ],
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 65.0,
                                height: 65.0,
                                decoration: BoxDecoration(
                                    color: Colors.grey, shape: BoxShape.circle),
                              ),
                              Text("Maxim")
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Alerts"),
                              Container(
                                child: Row(
                                  children: [
                                    Text("Expiry Alerts"),
                                    Icon(Icons.alarm)
                                  ],
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
