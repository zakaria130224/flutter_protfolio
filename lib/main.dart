import 'package:flutter/material.dart';
import 'package:web_mobile/pages/contact.dart';
import 'package:web_mobile/pages/service.dart';
import 'package:web_mobile/widgets/contact.dart';
import 'package:web_mobile/widgets/experiences.dart';
import 'package:web_mobile/widgets/listview.dart';
import 'package:web_mobile/widgets/sidebarmenue.dart';

import 'helper/const.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
      initialRoute: '/',
      routes: {
        '/contact': (context) => MyContact(),
        '/service': (context) => Service(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(colors: [gradientStart, gradientEnd],
              begin: const FractionalOffset(0.5, 0.0),
              end: const FractionalOffset(0.0, 0.5),
              stops: [0.0,1.0],
              tileMode: TileMode.clamp
          ),
        ),
        child: Center(
          child: ListView(
            children: <Widget>[
             // ContactWidget(),
             // ExperienceWidget()
              ListCard()

            ],
          ),
        ),
      ),
      drawer: SideBarWidget(),
    );
  }
}

