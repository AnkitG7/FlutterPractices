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
        body: Column(
          children: [
            // Other widgets to include in the Column
            SizedBox(
              height: 50,
            ),
            Text(
              "MentorBox Video",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: VideoListPage(
                      title: 'My Video',
                    ),
                  ),
                ),
                // Other widgets to include in the Row
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: VideoListPage(
                      title: 'My Video',
                    ),
                  ),
                ),
                // Other widgets to include in the Row
              ],
            ),
            // Other widgets to include in the Column
          ],
        ),
      ),
    );
  }
}
