import 'package:flutter/material.dart';

class ParentConnect extends StatefulWidget {
  static String id = 'ParentConnect';
  @override
  _ParentConnectState createState() => _ParentConnectState();
}

class _ParentConnectState extends State<ParentConnect> {
  Color blue = Color(0xFF076FA0);

  Widget makeCard(screenHeight, screenWidth, key, value) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: screenHeight * 0.008, horizontal: screenWidth * 0.08),
      child: Card(
          color: blue,
          child: Padding(
            padding: EdgeInsets.all(screenHeight * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(key, style: TextStyle(color: Colors.white)),
                Text(value,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600))
              ],
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Stack(
        children: [
          Column(
            children: [
              Image.asset('./assets/parent.png',
                  height: screenHeight * 0.4, width: screenWidth),
              makeCard(screenHeight, screenWidth, 'Parent Name', 'Tarun'),
              makeCard(screenHeight, screenWidth, 'Mobile No.', '1234567890')
            ],
          ),
          Positioned(
            left: screenWidth * 0.08,
            bottom: screenHeight * 0.05,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Material(
                  color: Colors.transparent,
                  shape: CircleBorder(),
                  child: Image.asset(
                    './assets/backbutton.png',
                    height: screenHeight * 0.1,
                  )),
            ),
          ),
        ],
      )),
    );
  }
}
