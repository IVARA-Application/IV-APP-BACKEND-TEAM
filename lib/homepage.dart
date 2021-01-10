import 'package:flutter/material.dart';
import 'package:ivara_app/students_app/auth/login.dart';

class HomePage extends StatelessWidget {
  static String id = 'HomePage';
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RaisedButton(
            onPressed: () { 
              Navigator.pushNamed(context, LoginPage.id);
            },
            color: Colors.blue,
            child: Text(
              'HomePage',
              style: TextStyle(
                  color: Colors.white),
            ),
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0))),
      ),
    );
  }
}