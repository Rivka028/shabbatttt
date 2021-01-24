import 'package:flutter/material.dart';


class Welcome extends StatefulWidget {
  @override
  _Welcome createState() => _Welcome();
}

class _Welcome extends State<Welcome> {
  @override
  Map data = {};

  Widget build(BuildContext context) {
      return Scaffold(
          body: SafeArea(
            child: Container(
             decoration: BoxDecoration(
               image: DecorationImage(
                image: AssetImage('assets/kotel.jpg'),
                fit: BoxFit.cover,
          ),
        )
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
                child: Column(
                  children: <Widget>[
                    FlatButton.icon(
                     onPressed: () async {
                       dynamic result = await Navigator.pushNamed(context, '/sign_in');
                          setState(() {
                          });
                          },
                              icon: Icon(Icons.edit_location),
                              label: Text('log in guest'),
                          ),
                          SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          data['sign_in'],
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
