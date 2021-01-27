import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ivara_app/students_app/academics/academics.dart';
import 'package:ivara_app/students_app/attendance/attendance.dart';
import 'package:ivara_app/students_app/dashboard/dashboard.dart';

import 'package:ivara_app/students_app/notification.dart';

import 'Parents_attendance/p_attendance.dart';
import 'Pnotification.dart';
import 'Teachers_list/teacherlist.dart';



class ParentsHomePage extends StatefulWidget{

  static String id = 'ParentsHomePage';

  @override
  _ParentsHomePageState  createState() => _ParentsHomePageState();

}

class _ParentsHomePageState extends State<ParentsHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
                'IVARA',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
          ),
          backgroundColor: Color(0xff0772a0),
          actions: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>pNotificationPage()));

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

        backgroundColor: Color(0xff0772a0) ,

       // backgroundColor: Colors.lightBlue ,
        body: _Body(),

    );
  }
}

class _Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(
                        left: 30,
                        top: 80,
                      ),
                    child: Text(
                      'Hello,\nSumit Guardian',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 42,
                     //   fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                    ),
                  )
                ],
              ),
             // color: Colors.lightBlue,
            ),
        ),
        Expanded(
            flex: 7,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
               child: ListView(

                 children: <Widget>[
                   SizedBox(height : 20),
                   SizedBox(height : 20),
                   ListTile(
                     title: Column(
                       children: <Widget>[
                         new MaterialButton(
                           height: 220.0,
                           minWidth: 340.0,

                           color: Color(0xff0772a0),

                       //    color: Theme.of(context).primaryColor,
                           textColor: Colors.white,
                           child: new Text("TEACHER LIST",
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 30,
                               )),
                           onPressed: ()  {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => Teacherlist()));
                           },

                          // splashColor: Colors.redAccent,

                           splashColor: Colors.redAccent,
                           shape: new RoundedRectangleBorder(
                               borderRadius: new BorderRadius.circular(15.0)),
                         ),
                       ],
                     ),
                   ),
                   SizedBox(height : 20),
                   SizedBox(height : 20),
                   ListTile(
                     title: Row(
                       children: <Widget>[
                         new MaterialButton(
                           height: 80.0,
                           minWidth: 30.0,

                           color: Color(0xff0772a0),
                      //     color: Theme.of(context).primaryColor,

                           textColor: Colors.white,
                           child: new Text("ACADEMICS",
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 20,
                               )),
                           onPressed: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) =>  AcademicsPage()));

                           },
                           splashColor: Colors.redAccent,
                           shape: new RoundedRectangleBorder(
                               borderRadius: new BorderRadius.circular(15.0)),
                         ),
                         SizedBox(width : 20),
                         SizedBox(width : 20),
                         new MaterialButton(
                           height: 80.0,
                           minWidth: 30.0,

                           color: Color(0xff0772a0),
                           //color: Theme.of(context).primaryColor,

                       //    color: Theme.of(context).primaryColor,
                           textColor: Colors.white,
                           child: new Text("ATTENDANCE",
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 20,
                               )),
                           onPressed: ()  {
                           Navigator.push(context, MaterialPageRoute(builder: (context) =>  PAttendancePage()));
                           },
                           splashColor: Colors.redAccent,
                           shape: new RoundedRectangleBorder(
                               borderRadius: new BorderRadius.circular(15.0)),
                         ),
                       ],
                     ),
                   )
                 ],
               ),


              ),

            ),
                ],
    );

  }

}
