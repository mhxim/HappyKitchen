import 'package:flutter/material.dart';
import 'package:happy_kitchen/utils/ui/tabs_navigation_item.dart';

class CustomNavBar extends StatefulWidget {
  CustomNavBar({Key key, this.controller}) : super(key: key);
  final PageController controller;
  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: Color(0xff1A1A22),
        shape: CircularNotchedRectangle(),
        child: Container(
            height: 70.0,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (final tabItem in TabNavigationItem.items)
                  GestureDetector(
                    onTap: () => widget.controller.jumpToPage(tabItem.page),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [tabItem.icon, tabItem.title],
                    ),
                  )
              ],
            )));
  }
}
