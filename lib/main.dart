import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'welcome.dart';



void main() async{
  await Firebase.initializeApp();
  runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Welcome(),
        '/home': (context) =>Welcome(),
        '/login_page': (context) => LoginPage(),
      }
  ));
}
