import 'package:flutter/material.dart';

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
                    Text(
                      "Home",
                      textAlign: TextAlign.right,
                    ),
                    new Text("Welcome Back,"),
                    new Text(widget.username),
                    Wrap(
                      children: [
                        Stack(children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                            width:
                                (MediaQuery.of(context).size.width - 100.0) / 2,
                            height: 250.0,
                          ),
                          Text("Storage")
                        ])
                      ],
                    )
                  ],
                ))));
  }
}
