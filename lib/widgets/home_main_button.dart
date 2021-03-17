import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:happy_kitchen/themes/lighttheme.dart';

class HomeMainButton extends StatefulWidget {
  HomeMainButton({
    Key key,
    this.page,
    this.title,
    this.imageUrl,
  }) : super(key: key);
  final Widget page;
  final String title;
  final String imageUrl;

  @override
  _HomeMainButtonState createState() => _HomeMainButtonState();
}

class _HomeMainButtonState extends State<HomeMainButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: AppTheme.defaultMargin,
        child: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (BuildContext context) => widget.page),
          ),
          child: Stack(children: [
            Container(
              decoration: AppTheme.defaultBox,
              width: (MediaQuery.of(context).size.width - 100.0) / 2,
              height: 250.0,
              child: Center(
                child: Image(image: AssetImage(widget.imageUrl)),
              ),
            ),
            Padding(
              padding: AppTheme.mainButtonMargin,
              child: Container(
                width: (MediaQuery.of(context).size.width - 140.0) / 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(widget.title, style: AppTheme.mainButtonTitle),
                    Icon(Icons.arrow_right_sharp)
                  ],
                ),
              ),
            )
          ]),
        ));
  }
}
