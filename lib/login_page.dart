import 'package:flutter/material.dart';
import 'package:shabbatttt/sign_in.dart';
import 'package:shabbatttt/FirstScreen.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(size: 150),
              SizedBox(height: 50),
              _signInButtonFacebook(),
            ],
          ),
        ),
      ),
    );
  }
  Widget _signInButtonFacebook() {
    return OutlineButton(
        splashColor: Colors.grey,
        onPressed: () {
          signInWithFacebook().then((result){
            if (result != null) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return FirstScreen();
                  },
                ),
              );
            }
          });
        },
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
    highlightElevation: 0,
    borderSide: BorderSide(color: Colors.grey),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(image: AssetImage('assets/Facebook_Logo.png'), height: 35.0),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Sign in with Facebook',
            style: TextStyle(
             fontSize: 20,
              color: Colors.grey,
            ),
            ),
          )
        ],
      ),
    ),  );
  }
  Widget _signInButton() {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {
        signInWithGoogle().then((result){
          if (result != null) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return FirstScreen();
                },
              ),
            );
          }
        });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('assets/Google_Logo.png'), height: 35.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}