import 'package:flutter/material.dart';
import 'login_page.dart';
import 'welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Welcome(),
      /*title: 'Flutter Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),*/
     // LoginPage(),
    );
  }
}