import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:flutter/material.dart';
class PlayYTB extends StatefulWidget {

  YoutubePlayerController _controllerYTB;
  // final List listP;
  // PlayYTB(this.listP);
  @override
  _PlayYTBState createState() => _PlayYTBState();
}

class _PlayYTBState extends State<PlayYTB> {
  @override
  void initState() {
    String YTBPlay = YoutubePlayerController.convertUrlToId("https://www.youtube.com/watch?v=yV2m7M34X3Y");
    print(YTBPlay + " 1234321");
    // TODO: implement initState
    super.initState();
    widget._controllerYTB = YoutubePlayerController(
      // initialVideoId: '4eFLfqGNEJw',
      params: YoutubePlayerParams(
        playlist: ['yV2m7M34X3Y', 'gQDByCdjUXw'], // Defining custom playlist
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
    // TODO: implement dispose
    super.dispose();
    widget._controllerYTB.close();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  YoutubePlayerControllerProvider(
        controller: widget._controllerYTB,
        child: YoutubePlayerIFrame(
          aspectRatio: 16 / 9,
        ),

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
    );
  }
}
