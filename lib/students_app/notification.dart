import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'layout/main_drawer.dart';

class NotificationPage extends StatefulWidget{
  static String id = 'NotificationPage';
  @override
  _NotificationPageState  createState() => _NotificationPageState();

}


class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("NOTIFICATIONS"),
        backgroundColor: Colors.lightBlue,
        actions: <Widget>[
          Row(
            children: <Widget>[
              IconButton(
                onPressed: () {
                  debugPrint('TapNotification');
                },
                icon: Stack(
                  children: <Widget>[
                    Icon(Icons.notifications,
                        color: Colors.white),
                    Positioned(
                      left: 16.0,
                      child: Icon(Icons.brightness_1,
                        color: Colors.red,
                        size: 9.0,
                      ),

                    )
                  ],
                ),
              )

            ],
          )
        ],
      ),

      drawer: MainDrawer(),
      body: Center(
        child: Container(
          width: 330,
          height: 250,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Color.fromARGB(75, 0, 0, 0),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(2,2),
                  blurRadius: 2,
                )
              ]
          ),

          child: Text(
            '14-01-2021 \n Sumit ',
            style: TextStyle(fontSize: 20),
          ),
          padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
        ),
      ),





    );
  }
}
