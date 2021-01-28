import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:ivara_app/students_app/notification.dart';
import './testCard.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:ivara_app/students_app/layout/sidebar.dart';

class TestPage extends StatefulWidget {
  static String id = 'TestPage';
  const TestPage({Key key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  CountDownController _controller = CountDownController();

  int index = 0;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    List<TestCard> testCard = [
      TestCard(subject: 'Physics', topic: 'Refraction', seconds: 700),
      TestCard(subject: 'Maths', topic: 'Integral', seconds: 1200),
      TestCard(subject: 'Chemistry', topic: 'Carbon', seconds: 2200),
      TestCard(subject: 'Biology', topic: 'Plants', seconds: 500)
    ];
    Widget testCardTemplate(testCard) {
      return TestCardWidget(
        screenHeight: screenHeight,
        screenWidth: screenWidth,
        controller: _controller,
        testCard: testCard,
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      
      appBar: AppBar(
        backgroundColor: Color(0xff0772a0),
        centerTitle: true,
        elevation: 1.0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text('TEST',
        style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(LineAwesomeIcons.bell),
            color: Colors.white,
            highlightColor: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, NotificationPage.id);
            },
          )
        ],
      ),
      drawer: MyDrawer(
        onTap: (ctx, i) {
          setState(() {
            index = i;
            Navigator.pop(ctx);
          });
        },
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: screenHeight * 0.055),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: screenHeight * 0.008,
                  horizontal: screenWidth * 0.07),
              child: Text(
                'Upcoming Tests',
                style: TextStyle(fontSize: 25),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(0),
              child: Column(
                  children: testCard
                      .map((TestCard) => testCardTemplate(TestCard))
                      .toList()),
            )
          ],
        )),
      ),
    );
  }
}
