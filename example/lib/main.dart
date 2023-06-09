import 'package:flutter/material.dart';
import 'package:youtube_player_flutter_example/youtube.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Video List'),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 200,
                    width: 400,
                    child: VideoListPage(title: 'My Video'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
