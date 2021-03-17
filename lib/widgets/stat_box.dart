import 'package:flutter/material.dart';
import 'package:happy_kitchen/themes/lighttheme.dart';

class StatBox extends StatefulWidget {
  StatBox({
    Key key,
    this.title,
    this.text,
  }) : super(key: key);
  final String title;
  final String text;

  @override
  _StatBoxState createState() => _StatBoxState();
}

class _StatBoxState extends State<StatBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15),
      child: Container(
        width: 200,
        height: 75,
        decoration: AppTheme.defaultBox,
        child: Padding(
          padding: EdgeInsets.only(top: 20.0, left: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.title, style: AppTheme.statisticsTitle),
              Text(widget.text, style: AppTheme.statisticsText)
            ],
          ),
        ),
      ),
    );
  }
}
