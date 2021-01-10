import 'package:flutter/material.dart';

class SubjectPage extends StatelessWidget {
  static String id = 'SubjectPage';
  const SubjectPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text("This is a group chat page")
      ),
    );
  }
}