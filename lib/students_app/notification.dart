import 'package:flutter/material.dart';

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


    );
  }
}
