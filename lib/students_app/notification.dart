import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  static String id = 'NotificationPage';
  const NotificationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text("This is notification Page")
      ),
    );
  }
}