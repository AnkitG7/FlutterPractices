import 'package:flutter/material.dart';

class FullInfoScreen extends StatelessWidget {
  final Map<String, dynamic> data;

  const FullInfoScreen({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data['title']),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data['title'],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                data['body'],
                style: const TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class FullInfoScreen extends StatelessWidget {
//   final Map<String, dynamic> data;

//   const FullInfoScreen({super.key, required this.data});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(data['title']),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               data['title'],
//               style: const TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20.0,
//               ),
//             ),
//             const SizedBox(height: 10.0),
//             Text(
//               data['body'],
//               style: const TextStyle(
//                 fontSize: 16.0,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
