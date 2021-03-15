import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Service extends StatefulWidget {
  @override
  _ServiceState createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  int count=0;
  Color gradientStart = Colors.grey[900]; //Change start gradient color here
  Color gradientEnd = Colors.grey[600]; //Change end gradient color here

  @override
  void initState() {
    // TODO: implement initState
    print('Hello from initState');
    getData();
  }


  // Async & Sync concept
  void getData() async{
    //Api -1 3 sec
   await Future.delayed(Duration(seconds: 3),(){
      print('api--1');
    });
    //Api -2 2 sec
   await Future.delayed(Duration(seconds: 2),(){
      print('api--2');
    });
    print('end of function');
  }
  @override
  Widget build(BuildContext context) {
    print('Hello from build');
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Stateful Widget'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            count+=1;
          });
        },
        child:Icon(Icons.add),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(colors: [gradientStart, gradientEnd],
              begin: const FractionalOffset(0.5, 0.0),
              end: const FractionalOffset(0.0, 0.5),
              stops: [0.0,1.0],
              tileMode: TileMode.clamp
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
//Profile Image
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 60,
                  child: CircleAvatar(
                    child: Text(count.toString(),
                    style:TextStyle(
                      fontSize: 30
                    ) ),
                    radius: 55,

                  ),
                ),
              ),

              SizedBox(height: 20,),
              Text(
                'Level '+count.toString(),
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),

              SizedBox(height: 10,),

            ],
          ),
        ),
      ),

    );
  }
}
