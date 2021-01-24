import 'package:flutter/material.dart';
import 'package:shabbatttt/sign_in.dart';

import 'package:shabbatttt/login_page.dart';


class Welcome extends StatefulWidget {
  @override
  _Welcome createState() => _Welcome();
}

class _Welcome extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
          body: SafeArea(
            child: Container(
             decoration: BoxDecoration(
               image: DecorationImage(
                image: AssetImage('assets/kotel.jpg'),
                fit: BoxFit.cover,
          ),
        ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
                child: Column(
                  children: <Widget>[
                    FlatButton.icon(
                     onPressed: () async {
                      Navigator.pushNamed(context, "/login_page");
    },
                              icon: Icon(Icons.edit_location),
                              label: Text('log in guest'),
                          ),
                          SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                       "hii",
                          style: TextStyle(
                            fontSize: 28.0,
                            letterSpacing: 2.0,
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
            ),
      ),
    ),
    );
  }
}
