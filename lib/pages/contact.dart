import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_mobile/helper/const.dart';
import 'package:web_mobile/widgets/contact.dart';



class MyContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Flutter ID'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      body:
      Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(colors: [gradientStart, gradientEnd],
                begin: const FractionalOffset(0.5, 0.0),
                end: const FractionalOffset(0.0, 0.5),
                stops: [0.0,1.0],
                tileMode: TileMode.clamp
            ),
          ),
          child: ContactWidget()
      )

    );
  }
}
