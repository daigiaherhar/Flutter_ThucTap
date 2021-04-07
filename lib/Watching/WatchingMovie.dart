import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart'; // video
import 'Detail.dart';
import 'Episodes.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
class ChewieDemo extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const ChewieDemo({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _ChewieDemoState();
  }
}

class _ChewieDemoState extends State<ChewieDemo> {
  static String idYTB = "BGdTT6dIQlY";
  YoutubePlayerController _controller;
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();

    _controller = YoutubePlayerController(
        initialVideoId: idYTB,
        params: const YoutubePlayerParams(
          playlist: [
            'BGdTT6dIQlY',
            'K18cpp_-gP8',
            'iLnmTe5Q2Qw',
            '_WoCV4c6XOE',
            'KmzdUe0RSJo',
            '6jZDSSZZxjQ',
            'p2lYr3vM_1w',
            '7QUtEmBT_-w',
            '34_PXCzGw1M',
          ],
          startAt: const Duration(minutes: 1, seconds: 36),
          showControls: true,
          showFullscreenButton: true,
          desktopMode: true,
          privacyEnhanced: true,
          useHybridComposition: true,
        ),
    );
  }

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController?.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        "https://assets.mixkit.co/videos/preview/mixkit-forest-stream-in-the-sunlight-529-large.mp4");

    await Future.wait([
      _videoPlayerController1.initialize(),
    ]);

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
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
            Expanded(
              flex: 1,
              child: Container(
                child:  YoutubePlayerIFrame(
                  aspectRatio: 16/9 ,
                ),
                  // child: _chewieController != null &&
                  //         _chewieController
                  //             .videoPlayerController.value.isInitialized
                  //     ? Chewie(
                  //         controller: _chewieController,
                  //       )
                  //     : Center(
                  //         child: Column(
                  //           mainAxisAlignment: MainAxisAlignment.center,
                  //           children: const [
                  //             CircularProgressIndicator(),
                  //             SizedBox(height: 20),
                  //             Text('Loading'),
                  //           ],
                  //         ),
                  //       )
                      ),
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
