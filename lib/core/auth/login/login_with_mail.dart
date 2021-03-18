import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:happy_kitchen/themes/lighttheme.dart';
import 'package:happy_kitchen/widgets/big_button.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: SvgPicture.asset(
                "assets/images/login_undraw.svg",
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 40.0, right: 40.0, top: 35.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: AppTheme.pageTitleMargin,
                    child: Text("Happy Kitchen", style: AppTheme.pageTitle),
                  ),
                  Padding(
                    padding: AppTheme.pageTitleMargin,
                    child: Row(
                      children: [
                        Text("Make your kitchen ", style: AppTheme.subTitle),
                        Text("happy", style: AppTheme.homeUsername),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => (context),
                    child: BigButton(
                        text: "Login With Google",
                        color: AppTheme.highlightColor,
                        textColor: Colors.white),
                  ),
                  SizedBox(height: 15),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
