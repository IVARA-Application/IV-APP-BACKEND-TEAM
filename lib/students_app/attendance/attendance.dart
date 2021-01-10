import 'package:flutter/material.dart';

class AttendancePage extends StatelessWidget {
  static String id = 'AttendancePage';
  const AttendancePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text("This is attendance page")
      ),
    );
  }
}