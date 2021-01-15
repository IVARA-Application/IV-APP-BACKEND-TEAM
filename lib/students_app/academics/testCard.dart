import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class TestCard {
  String subject;
  String topic;
  num seconds;
  TestCard({this.seconds, this.subject, this.topic});
}

// var birthday = DateTime.parse("1969-07-20 20:18:04");

// final birthday = DateTime(1969-07-20 20:18:04.000Z);
//  final date2 = DateTime.now();
//  final difference = date2.difference(birthday).inSeconds;
class TestCardWidget extends StatelessWidget {
  final TestCard testCard;

  final double screenHeight;
  final double screenWidth;
  final CountDownController _controller;
  // final dateToday = DateTime.now();
  // final DateTime rawTime = '${dateToday.year}';
  // final secondsTimer = dateToday.diffrence(dateDue).inSeconds;

  const TestCardWidget(
      {Key key,
      @required this.screenHeight,
      @required this.screenWidth,
      @required CountDownController controller,
      this.testCard})
      : _controller = controller,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: screenHeight * 0.04,
        left: screenWidth * 0.06,
        right: screenWidth * 0.06,
      ),
      child: GestureDetector(
        onTap: () => {},
        child: Container(
            width: screenWidth,
            height: screenHeight * 0.22,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10.0,
                  spreadRadius: 6.0,
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: screenWidth * 0.038,
                  height: screenHeight * 0.28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                    color: Color(0xFF076FA0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          top: screenHeight * 0.04,
                        ),
                        child: Text(
                          testCard.subject,
                          style:
                              TextStyle(fontSize: 23, color: Color(0xFF076FA0)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: screenHeight * 0.004,
                        ),
                        child: Text(
                          'Today, 12:00 PM',
                          style:
                              TextStyle(fontSize: 13, color: Color(0xFF076FA0)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: screenHeight * 0.03,
                        ),
                        child: Text(
                          'Topic :',
                          style:
                              TextStyle(fontSize: 22, color: Color(0xFF076FA0)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: screenHeight * 0.0,
                        ),
                        child: Text(
                          testCard.topic,
                          style:
                              TextStyle(fontSize: 15, color: Color(0xFF076FA0)),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: screenHeight * 0.018,
                  ),
                  child: CircularCountDownTimer(
                    duration: testCard.seconds,
                    controller: _controller,
                    width: screenWidth * 0.35,
                    height: screenHeight * 0.42,
                    color: Color(0xFF076FA0),
                    fillColor: Colors.white,
                    backgroundColor: null,
                    strokeWidth: 18.0,
                    strokeCap: StrokeCap.butt,
                    textStyle:
                        TextStyle(fontSize: 27.0, color: Color(0xFF076FA0)),
                    isReverse: true,
                    isReverseAnimation: false,
                    isTimerTextShown: true,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
