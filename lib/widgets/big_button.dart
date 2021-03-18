import 'package:flutter/material.dart';

class BigButton extends StatefulWidget {
  BigButton({Key key, this.text, this.color, this.textColor}) : super(key: key);
  final String text;
  final Color color;
  final Color textColor;

  @override
  _BigButtonState createState() => _BigButtonState();
}

class _BigButtonState extends State<BigButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: Center(
        child: Text(
          widget.text,
          style: TextStyle(
              color: widget.textColor,
              fontWeight: FontWeight.w500,
              fontSize: 17.5),
        ),
      ),
    );
  }
}
