import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:happy_kitchen/pages/subpages/storage_cell.dart';
import 'package:happy_kitchen/themes/lighttheme.dart';

class StorageBox extends StatefulWidget {
  StorageBox({Key key, this.title, this.document}) : super(key: key);
  final String title;
  final DocumentSnapshot document;

  @override
  _StorageBoxState createState() => _StorageBoxState();
}

class _StorageBoxState extends State<StorageBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) =>
              StorageCell(document: widget.document),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            width: (MediaQuery.of(context).size.width - 100.0) / 3,
            child: Image(
              image: AssetImage("assets/images/logo.png"),
            ),
          ),
          Text(widget.title, style: AppTheme.storageBoxTitle)
        ],
      ),
    );
  }
}
