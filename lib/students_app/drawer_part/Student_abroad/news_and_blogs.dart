  import 'package:flutter/cupertino.dart';
  import 'package:flutter/material.dart';
  import 'package:ivara_app/students_app/notification.dart';
  import 'package:line_awesome_flutter/line_awesome_flutter.dart';




  class NewsandblogsPage extends StatefulWidget{

    static String id = 'NewsandblogsPage';

    @override
    _NewsandblogsPageState  createState() => _NewsandblogsPageState();

  }

  class _NewsandblogsPageState extends State<NewsandblogsPage> {

    @override
    Widget build(BuildContext context) {
      int index = 0;
      double screenHeight = MediaQuery.of(context).size.height;
      double screenWidth = MediaQuery.of(context).size.width;
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff0772a0),
          centerTitle: true,
          elevation: 1.0,
          title: Text('NEWS & BLOGS',
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


        body: Center(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Material(
                  child: GestureDetector(
                    onTap: () {
                      print('I got clicked');
                    },
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset('assets/pic1.jpeg',
                          height: 220.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Material(
                  child: GestureDetector(
                    onTap: () {
                      print('I got clicked');
                    },
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset('assets/pic1.jpeg',
                          height: 220.0,
                        ),
                      ),
                    ),
                  ),
                ),
              )

            ],
          ),

        /*  child: GestureDetector(
            onTap: () {
              print('I got clicked');
            },
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset('assets/pic1.jpeg',
                  width: 320.0,height: 270.0,
                ),
              ),
            ),

          ), */
        ),
      );



    }
  }
