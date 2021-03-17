import 'package:flutter/material.dart';
import 'package:happy_kitchen/pages/home.dart';
import 'package:happy_kitchen/pages/profile.dart';
import 'package:happy_kitchen/widgets/bottom_nav.dart';
import 'package:happy_kitchen/widgets/scan_button.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  PageController _myPage = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: _myPage,
          onPageChanged: (int) {
            print('Page Changes to index $int');
          },
          children: <Widget>[
            HomePage(username: "Maxim"),
            ProfilePage(),
          ],
        ),
        floatingActionButton: ScanButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: CustomNavBar(controller: _myPage));
  }
}
