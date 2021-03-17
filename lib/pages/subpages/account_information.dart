import 'package:flutter/material.dart';

class AccountInformation extends StatefulWidget {
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
                      GestureDetector(
                        child: Text("APP SETTINGS"),
                        onTap: () => Navigator.pop(context),
                      ),
                      Text("Account Information"),
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            TextFormField(
                              decoration: InputDecoration(labelText: "Name"),
                            ),
                            TextFormField(
                              decoration: InputDecoration(labelText: "Email"),
                            ),
                            TextFormField(
                              decoration:
                                  InputDecoration(labelText: "New Password"),
                            )
                          ],
                        ),
                      ),
                    ]))));
  }
}
