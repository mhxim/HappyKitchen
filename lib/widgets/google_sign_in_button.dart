import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:happy_kitchen/themes/lighttheme.dart';
import 'package:happy_kitchen/utils/services/authentication.dart';
import 'package:happy_kitchen/utils/ui/tabs.dart';
import 'package:happy_kitchen/widgets/big_button.dart';

class GoogleSignInButton extends StatefulWidget {
  @override
  _GoogleSignInButtonState createState() => _GoogleSignInButtonState();
}

class _GoogleSignInButtonState extends State<GoogleSignInButton> {
  bool _isSigningIn = false;

  @override
  Widget build(BuildContext context) {
    return _isSigningIn
        ? CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          )
        : GestureDetector(
            onTap: () async {
              setState(() {
                _isSigningIn = true;
              });
              User user =
                  await Authentication.signInWithGoogle(context: context);

              setState(() {
                _isSigningIn = false;
              });

              if (user != null) {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => TabsPage(
                      user: user,
                    ),
                  ),
                );
              }
            },
            child: BigButton(
              text: "Login with Google",
              color: AppTheme.highlightColor,
              textColor: Colors.white,
            ));
  }
}
