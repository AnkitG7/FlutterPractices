import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'full_info_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter HTTP JSON PH',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> _data = [];

  @override
  void initState() {
    super.initState();
    _getData();
  }

  Future<void> _getData() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      setState(() {
        _data = data;
      });
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter HTTP JS'),
      ),
      body: ListView.builder(
        itemCount: _data.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FullInfoScreen(data: _data[index]),
                ),
              );
            },
            child: Card(
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.dataset_linked_outlined),
                    title: Text(
                      _data[index]['title'],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    subtitle: Text(
                      _data[index]['body'],
                      style: const TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  const Divider(height: 0),
                ],
              ),
            ),
          );

          // return Card(
          //   child: Column(
          //     children: [
          //       ListTile(
          //         leading: const Icon(Icons.dataset_linked_outlined),
          //         title: Text(
          //           _data[index]['title'],
          //           style: const TextStyle(
          //             fontWeight: FontWeight.bold,
          //             fontSize: 16.0,
          //           ),
          //         ),
          //         subtitle: Text(
          //           _data[index]['body'],
          //           style: const TextStyle(
          //             fontSize: 14.0,
          //           ),
          //         ),
          //       ),
          //       const Divider(height: 0),
          //     ],
          //   ),
          // );

          // return ListTile(
          //   leading: const Icon(Icons.dataset_linked_outlined),
          //   title: Text(_data[index]['title']),
          //   subtitle: Text(_data[index]['body']),
          // );
        },
      ),
    );
  }
}
