import 'package:flutter/material.dart';
import 'package:ivara_app/students_app/student_homepage.dart';

class SignUpPage extends StatelessWidget {
  static String id = 'SignUpPage';
  const SignUpPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, StudentHomePage.id);
                },
                color: Colors.blue,
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white),
                ),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0))),
            RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.blue,
                child: Text(
                  'Go to Login',
                  style: TextStyle(color: Colors.white),
                ),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0))),
          ],
        ),
      ),
    );
  }
}
