import 'package:flutter/material.dart';
import 'package:flutter_project_moi_hoc/Model/CategoryImage.dart';
import 'package:video_player/video_player.dart';

class WatchingMovie extends StatefulWidget {
  final CategoryImage categoryImage;

  WatchingMovie(this.categoryImage);

  @override
  _WatchingMovieState createState() => _WatchingMovieState();
}

class _WatchingMovieState extends State<WatchingMovie> {
  VideoPlayerController _controller;
  Future<void> _initalizeVideoPlayerFuture;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.network(
        "https://firebasestorage.googleapis.com/v0/b/fluttermoihoc.appspot.com/o/Phim%2FgenshinImpact.mp4?alt=media&token=2f990060-0dfd-40b5-80c6-dc2cf54f2225");
    _initalizeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.categoryImage.sName),
       backgroundColor: Colors.transparent,
      ),
      body: FutureBuilder(
          future: _initalizeVideoPlayerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
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
