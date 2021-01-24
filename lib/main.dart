import 'package:flutter/material.dart';
import 'login_page.dart';
import 'welcome.dart';



void main() => runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Welcome(),
      '/home': (context) =>Welcome(),
      '/login_page': (context) => LoginPage(),
    }
));
