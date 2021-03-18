import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:happy_kitchen/themes/lighttheme.dart';
import 'package:happy_kitchen/utils/services/authentication.dart';
import 'package:happy_kitchen/widgets/big_button.dart';
import 'package:happy_kitchen/widgets/google_sign_in_button.dart';

class InitialPage extends StatefulWidget {
  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
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
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 40.0, right: 40.0, top: 35.0),
                child: ListView(
                  scrollDirection: Axis.vertical,
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
                    FutureBuilder(
                      future:
                          Authentication.initializeFirebase(context: context),
                      builder: (context, snapshot) {
                        if (snapshot.hasError) {
                          return Text('Error initializing Firebase');
                        } else if (snapshot.connectionState ==
                            ConnectionState.done) {
                          return GoogleSignInButton();
                        }
                        return CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            AppTheme.highlightColor,
                          ),
                        );
                      },
                    ),
                    // SizedBox(height: 15),
                    // GestureDetector(
                    //   onTap: () => Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (BuildContext context) => RegisterPage(),
                    //     ),
                    //   ),
                    //   child: BigButton(
                    //       text: "Create an Account",
                    //       color: AppTheme.defaultSubColor,
                    //       textColor: Colors.black),
                    // ),
                    // Center(
                    //     child: Padding(
                    //         padding: EdgeInsets.symmetric(vertical: 10),
                    //         child:
                    //             Text("or", style: AppTheme.statisticsTitle))),
                    // GestureDetector(
                    //   onTap: () => Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (BuildContext context) => LoginPage(),
                    //     ),
                    //   ),
                    //   child: BigButton(
                    //       text: "Login",
                    //       color: AppTheme.defaultSubColor,
                    //       textColor: Colors.black),
                    // )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
