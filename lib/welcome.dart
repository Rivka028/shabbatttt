import 'package:flutter/material.dart';


class Welcome extends StatefulWidget {
  @override
  _Welcome createState() => _Welcome();
}

class _Welcome extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Image(image: AssetImage('assets/kotel.jpg'))


        )
    );
    //
  }
}
