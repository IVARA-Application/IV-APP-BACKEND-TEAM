import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ivara_app/students_app/notification.dart';

class Teacherlist extends StatefulWidget{
  @override
  State<Teacherlist> createState() {
    // TODO: implement createState
   return new TeacherlistState();
  }
  
}

class TeacherlistState extends State<Teacherlist>
{
  List<String> Names = [
    'Aman','Jugaldutt','Mayank','Sumit','Tarun','Tanishk'];


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return new Scaffold(
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
    body: Stack(
      children: [
        new Container(
          child: new ListView.builder(
              itemBuilder: (_,int index) => EachList(this.Names[index]),
               itemCount: this.Names.length,
        ),
        ),
        Positioned(
                left: screenWidth*0.08,
                bottom: screenHeight*0.05,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Material(
                    color: Colors.transparent,
                    shape: CircleBorder(),
                    child: Image.asset('./assets/backbutton.png',height: screenHeight*0.1,)),),
              ),
      ],
    )
    );
  }
  
}

class EachList extends StatelessWidget{
  final String name;
  EachList(this.name);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Card(
      child: new Container(
        padding: EdgeInsets.all(12.0),
        child: new Row(
           children: <Widget>[
             new CircleAvatar(child: new Text(name[0]),),
             new Padding(padding: EdgeInsets.only(right: 10.0),),
             new Text(name,style: TextStyle(fontSize: 20.0),),
           ],
        ),
      ),
    );
  }

}