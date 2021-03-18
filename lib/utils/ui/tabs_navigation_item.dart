import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:happy_kitchen/themes/lighttheme.dart';

class TabNavigationItem {
  final int page;
  final Widget title;
  final Widget icon;

  TabNavigationItem({
    @required this.page,
    @required this.title,
    @required this.icon,
  });

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: 0,
          icon: SvgPicture.asset("assets/images/Home_fill.svg",
              height: 35, width: 35, color: Colors.white),
          title: Text("home", style: AppTheme.navTitle),
        ),
        TabNavigationItem(
          page: 1,
          icon: Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: SvgPicture.asset("assets/images/User_Outline.svg",
                height: 25, width: 25, color: Colors.white),
          ),
          title: Text("profile", style: AppTheme.navTitle),
        ),
      ];
}
