import 'package:flutter/material.dart';

void main() => runApp(MaterialApp (home:HomePage()),);

class HomePage extends StatelessWidget {
  @override

  _HomePageState creatState() => _HomePageState();
}

final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();


class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('google sign-in demo'),),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('sign-in with Google',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,),),
                ), onPressed: _signInWithGoogle,
                  color: Colors.black,
                )
              ],
            ),
          )
      );
    }
    _signInWithGoogle() async{
      final GoogleSignInAccount googleUser = await googleSignIn.signIn();
      //final GoogleSignInAuthenticao
    }
  }

