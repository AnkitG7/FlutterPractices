import 'package:flutter/material.dart';
import 'package:youtube_player_flutter_example/youtube.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final screenSize = MediaQuery.of(context).size;
//     final containerSize = screenSize.width * 0.8;

//     return MaterialApp(
//       title: 'My App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('My Video List'),
//         ),
//         body: Center(
//           child: Container(
//             height: containerSize,
//             width: containerSize,
//             child: VideoListPage(
//               title: 'My Video',
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final screenSize = MediaQuery.of(context).size;
//     final containerSize = screenSize.width * 0.8;

//     return MaterialApp(
//       title: 'My App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('My Video List'),
//         ),
//         body: Center(
//           child: Container(
//             height: containerSize,
//             width: containerSize,
//             child: VideoListPage(
//               title: 'My Video',
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Video List'),
        ),
        body: Container(
          child: VideoListPage(
            title: 'My Video',
          ),
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'My App',
//       home: VideoListPage(title: 'My Video List'),
//     );
//   }
// }

// class VideoListPage extends StatefulWidget {
//   VideoListPage({Key? key, required this.title}) : super(key: key);
//   final String title;

//   @override
//   _VideoListPageState createState() => _VideoListPageState();
// }

// class _VideoListPageState extends State<VideoListPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Text('Video List'),
//       ),
//     );
//   }
// }
