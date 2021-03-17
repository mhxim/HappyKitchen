import 'package:flutter/material.dart';

class HomeMainButton extends StatefulWidget {
  HomeMainButton({Key key, this.page}) : super(key: key);
  final Widget page;

  @override
  _HomeMainButtonState createState() => _HomeMainButtonState();
}

class _HomeMainButtonState extends State<HomeMainButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) => widget.page),
        )
      },
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(
              color: Color(0xffEFEFEF),
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          width: (MediaQuery.of(context).size.width - 100.0) / 2,
          height: 250.0,
        ),
        Text("Storage")
      ]),
    );
  }
}
