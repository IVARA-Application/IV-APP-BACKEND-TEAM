import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  static String id = 'TestPage';
  const TestPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text("This is a test page")
      ),
    );
  }
}