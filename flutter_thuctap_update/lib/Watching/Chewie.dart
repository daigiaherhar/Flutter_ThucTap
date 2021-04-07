import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
class PlayChewie extends StatefulWidget {
  ChewieController _chewieController;
  VideoPlayerController _videoPlayerController1;
  @override
  _PlayChewieState createState() => _PlayChewieState();
}

class _PlayChewieState extends State<PlayChewie> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    widget._chewieController.dispose();

  }

  Future<void> initializePlayer() async {
    widget._videoPlayerController1 = VideoPlayerController.network(
        "https://assets.mixkit.co/videos/preview/mixkit-forest-stream-in-the-sunlight-529-large.mp4");

    await Future.wait([
      widget._videoPlayerController1.initialize(),
    ]);

    widget._chewieController = ChewieController(
      videoPlayerController: widget._videoPlayerController1,
      autoPlay: false,

      // looping: true, //vòng lặp
      allowPlaybackSpeedChanging: false,
      // Try playing around with some of these other options:

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializePlayer();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget._chewieController != null &&
          widget._chewieController
                  .videoPlayerController.value.isInitialized
          ? Chewie(
              controller: widget._chewieController,
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(),
                  SizedBox(height: 20),
                  Text('Loading'),
                ],
              ),
            ),
    );
  }
}
