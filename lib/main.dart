import 'package:flutter/material.dart';
import 'package:web_mobile/pages/contact.dart';
import 'package:web_mobile/pages/service.dart';
import 'package:web_mobile/widgets/contact.dart';
import 'package:web_mobile/widgets/experiences.dart';

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
        // When navigating to the "/" route, build the FirstScreen widget.
        //'/': (context) => MyContact(),
        // When navigating to the "/second" route, build the SecondScreen widget.
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
              ContactWidget(),
              ExperienceWidget()

            ],
          ),
        ),
      ),
      drawer: Drawer(

        child: ListView(

          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child:
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 60,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/pp.jpg"),
                    radius: 55,

                  ),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage("assets/pic01.jpg"),
                      fit: BoxFit.cover)
              ),

            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),

              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Service'),
              onTap: () {
                Navigator.pushNamed(context, '/service');
              },
            ),

            ListTile(
              title: Text('Experiences'),
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              },
            ),
            ListTile(
              title: Text('Skills'),
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              },
            ),
            ListTile(
              title: Text('Projects'),
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              },
            ),
            ListTile(
              title: Text('Awards and Certificates'),
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              },
            ),
            ListTile(
              title: Text('Contact'),
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              },
            ),
          ],
        ),
      ),
    );
  }
}

