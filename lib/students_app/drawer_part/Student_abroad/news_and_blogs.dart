import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ivara_app/Parents_app/Parents_homepage.dart';
import 'package:ivara_app/students_app/academics/academics.dart';
import 'package:ivara_app/students_app/attendance/attendance.dart';
import 'package:ivara_app/students_app/dashboard/dashboard.dart';
import 'package:ivara_app/students_app/layout/main_drawer.dart';
import 'package:ivara_app/students_app/notification.dart';




class NewsandblogsPage extends StatefulWidget{

  static String id = 'NewsandblogsPage';

  @override
  _NewsandblogsPageState  createState() => _NewsandblogsPageState();

}

class _NewsandblogsPageState extends State<NewsandblogsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("NEWS AND BLOGS"),
          backgroundColor: Colors.lightBlue,
          actions: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>NotificationPage()));

                  },
                  icon: Stack(
                    children: <Widget>[
                      Icon(Icons.notifications,
                          color: Colors.white),
                      Positioned(
                        left: 16.0,
                        child: Icon(Icons.brightness_1,
                          color: Colors.red,
                          size: 9.0,
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
        drawer: MainDrawer(),

       body: Center(
         child: ListView(
           children: <Widget>[
             SizedBox(height: 40),
             SizedBox(height: 40),
             SizedBox(height: 40),
              Material(
                child: GestureDetector(
                  onTap: () {
                    print('I got clicked');
                  },
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset('assets/pic1.jpeg',
                        width: 280.0,height: 220.0,
                      ),
                    ),
                  ),
                ),
              ),
             SizedBox(height: 40),
             SizedBox(height: 40),
             Material(
               child: GestureDetector(
                 onTap: () {
                   print('I got clicked');
                 },
                 child: Container(
                   child: ClipRRect(
                     borderRadius: BorderRadius.circular(20.0),
                     child: Image.asset('assets/pic1.jpeg',
                       width: 380.0,height: 220.0,
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
