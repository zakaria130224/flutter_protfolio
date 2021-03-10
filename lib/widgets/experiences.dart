import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_mobile/helper/const.dart';

class ExperienceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
//Profile Image
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 60,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/pic03.png"),
                  radius: 55,

                ),
              ),
            ),
//Name
            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              'Zakaria Ahammed',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
//Address
            SizedBox(height: 20,),
            Text(
              'Address',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              'H#333, Khajura, Sadar, Jashore',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),
//Level
            SizedBox(height: 20,),
            Text(
              'Level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10,),

            SizedBox(height: 20,),
            Row(
              children: <Widget>[

                GestureDetector(
                  onTap: ()=> launch("tel:+8801833182777"),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.phone,
                        color: Colors.green,
                      ),
                      SizedBox(width: 20,),
                      Text(
                        '+8801833182777',
                        style: TextStyle(
                          color: Colors.amber,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),

                      ),
                    ],
                  ),
                ),

              ],
            ),
//Email
//SizedBox(height: 20,),
            Row(
              children: <Widget>[
                GestureDetector(
                  onTap: ()=>launch(new  Uri(
                      scheme: 'mailto',
                      path: 'provincialkid@gmail.com',
                      queryParameters: {
                        'subject': 'Example Subject & Symbols are allowed!'
                      }
                  ).toString()),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        color: Colors.yellow,
                      ),
                      SizedBox(width: 20,),
                      Text(
                        'zakaria.ahammed@robi.com.bd',
                        style: TextStyle(
                          color: Colors.amber,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                )

              ],
            ),
//QR-Code
            SizedBox(height: 50,),
            Center(
              child: QrImage(
                data: "{\"Name\":\"Zakaria Ahammed\",\"Address\":\"H#333, Khajura, Sadar, Jashore\",\"Phone\":\"+8801833182777\",\"Email\":\"zakaria.ahammed@robi.com.bd\"}",
                version: QrVersions.auto,
                size: 200.0,
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
