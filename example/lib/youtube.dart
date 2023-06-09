import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoListPage extends StatefulWidget {
  VideoListPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _VideoListPageState createState() => _VideoListPageState();
}

class _VideoListPageState extends State<VideoListPage> {
  late YoutubePlayerController _controller;

  final List<String> videoIds = [
    'VHaahdopYlU',
    't-IrBXlSNAg',
    'iLnmTe5Q2Qw',
    '_WoCV4c6XOE',
    'KmzdUe0RSJo',
    '6jZDSSZZxjQ',
    'p2lYr3vM_1w',
    '7QUtEmBT_-w',
    '34_PXCzGw1M',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: videoIds.length,
        itemBuilder: (context, index) {
          String videoId = videoIds[index];
          YoutubePlayerController _controller = YoutubePlayerController(
            initialVideoId: videoId,
            params: YoutubePlayerParams(
              playlist: videoIds,
              showControls: true,
              showFullscreenButton: true,
              desktopMode: false,
              privacyEnhanced: true,
              useHybridComposition: true,
            ),
          );
          _controller.onEnterFullscreen = () {
            SystemChrome.setPreferredOrientations([
              DeviceOrientation.landscapeLeft,
              DeviceOrientation.landscapeRight,
            ]);
            print('Entered Fullscreen');
          };
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 80 / 100,
              height: 200,
              child: YoutubePlayerIFrame(
                controller: _controller,
              ),
            ),
          );
        },
      ),
    );
  }
}
