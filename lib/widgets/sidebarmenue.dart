import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(

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
    );
  }
}
