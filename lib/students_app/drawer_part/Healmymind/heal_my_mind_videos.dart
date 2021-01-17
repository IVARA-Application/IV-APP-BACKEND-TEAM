import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ivara_app/Parents_app/Parents_homepage.dart';
import 'package:ivara_app/students_app/academics/academics.dart';
import 'package:ivara_app/students_app/attendance/attendance.dart';
import 'package:ivara_app/students_app/dashboard/dashboard.dart';
import 'package:ivara_app/students_app/layout/main_drawer.dart';
import 'package:ivara_app/students_app/notification.dart';
import 'package:video_player/video_player.dart';




class HealMyMindVideosPage extends StatefulWidget{

  static String id = 'HealMyMindVideosPage';

  @override
  _HealMyMindVideosPageState  createState() => _HealMyMindVideosPageState();

}

class _HealMyMindVideosPageState extends State<HealMyMindVideosPage> {

  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState(){
   //  _controller = VideoPlayerController.network(
    //     "https://www.youtube.com/watch?v=dTu5dTEzVM4");
    _controller = VideoPlayerController.asset("videos/video1.mp4");
     _initializeVideoPlayerFuture = _controller.initialize();
     _controller.setLooping(true);
     _controller.setVolume(1.0);
     super.initState();
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("IVENTORS"),
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

      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot)
        {
           if(snapshot.connectionState == ConnectionState.done){
             return AspectRatio(
               aspectRatio: _controller.value.aspectRatio,
               child: VideoPlayer(_controller),
             );
           }
           else
             {
               return Center(
                 child: CircularProgressIndicator(),
               );
             }
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            if(_controller.value.isPlaying){
              _controller.pause();
            }
            else
              {
                _controller.play();
              }
          });
        },
        child:
        Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
      ),
    );



  }
}


