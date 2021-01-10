import 'package:flutter/material.dart';
import 'package:ivara_app/students_app/academics/test.dart';

class AcademicsPage extends StatelessWidget {
  static String id = 'AcademicsPage';
  const AcademicsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RaisedButton(
            onPressed: () { 
              Navigator.pushNamed(context, TestPage.id);
            },
            color: Colors.blue,
            child: Text(
              'Test Page',
              style: TextStyle(
                  color: Colors.white),
            ),
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0))),
      ),
    );
  }
}