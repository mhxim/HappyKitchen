import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:happy_kitchen/core/auth/initial/initial.dart';
import 'package:happy_kitchen/pages/subpages/data_protection.dart';
import 'package:happy_kitchen/themes/lighttheme.dart';
import 'package:happy_kitchen/utils/services/authentication.dart';
import 'package:happy_kitchen/widgets/big_button.dart';

import 'account_information.dart';

class AppSettings extends StatefulWidget {
  AppSettings({Key key, this.user}) : super(key: key);
  final User user;
  @override
  _AppSettingsState createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
  bool _isSigningOut = false;

  Route _routeToSignInScreen() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => InitialPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(-1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

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
                      Padding(
                        padding: AppTheme.routeMargin,
                        child: GestureDetector(
                          child: Text("PROFILE", style: AppTheme.routeText),
                          onTap: () => Navigator.pop(context),
                        ),
                      ),
                      Padding(
                        padding: AppTheme.pageTitleMargin,
                        child: Text("App Settings", style: AppTheme.pageTitle),
                      ),
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      AccountInformation(user: widget.user),
                                ),
                              ),
                              child: Container(
                                decoration: AppTheme.defaultBox,
                                child: Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Row(
                                    children: [
                                      Text("Account Information",
                                          style: AppTheme.settingsText),
                                      Icon(Icons.arrow_right)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      DataProtection(),
                                ),
                              ),
                              child: Container(
                                decoration: AppTheme.defaultBox,
                                child: Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Row(
                                    children: [
                                      Text("Data Protection",
                                          style: AppTheme.settingsText),
                                      Icon(Icons.arrow_right)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            _isSigningOut
                                ? CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.white),
                                  )
                                : GestureDetector(
                                    onTap: () async {
                                      setState(() {
                                        _isSigningOut = true;
                                      });
                                      await Authentication.signOut(
                                          context: context);
                                      setState(() {
                                        _isSigningOut = false;
                                      });
                                      Navigator.of(context).pushReplacement(
                                          _routeToSignInScreen());
                                    },
                                    child: BigButton(
                                      text: "Logout",
                                      color: Color(0xffFF6363),
                                      textColor: Colors.white,
                                    )),
                          ],
                        ),
                      ),
                    ]))));
  }
}
