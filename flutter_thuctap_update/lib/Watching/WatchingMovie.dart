import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart'; // video
import 'Detail.dart';
import 'Episodes.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'YTB.dart';

class Watching extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const Watching({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _WatchingState();
  }
}

class _WatchingState extends State<Watching> {
  static String idYTB = "BGdTT6dIQlY";



  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.black45,
          Colors.white,
          Colors.cyanAccent,
          Colors.amberAccent,
          Colors.lightGreenAccent,
        ])),
        child: Column(
          children: <Widget>[
            Expanded(flex: 1, child: PlayYTB()

                ),
            Expanded(
                flex: 2,
                child: PageView(
                  children: [
                    DetailWatching(),
                    Episodes(),
                    DetailWatching(),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
