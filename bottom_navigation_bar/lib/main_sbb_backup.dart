import 'package:bottom_navigation_bar/pages/home_page.dart';
import 'package:bottom_navigation_bar/pages/person_page.dart';
import 'package:bottom_navigation_bar/pages/settings_page.dart';
import 'package:bottom_navigation_bar/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

import 'constants/appbar_title.dart';

void main() {
  runApp(const MyBNB());
}

class MyBNB extends StatelessWidget {
  const MyBNB({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bottom Navigation Bar",
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List<Widget> _listOfBottomPages = [
  PersonPage(
    name: 'John Doe',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
        'Donec non ex et diam euismod tristique. Sed gravida interdum enim,'
        ' quis feugiat mauris finibus vel. Vestibulum scelerisque enim sed '
        'leo pulvinar, sed varius nibh sodales. ',
    imageUrl: 'https://picsum.photos/200',
  ),
  const HomePage(),
  const SettingsPage(),
];

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 1;
  void onTapClick(int value) {
    setState(() {
      print("value  $value");
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appbarTitle[_currentIndex]),
      ),
      drawer: const MyDrawer(), // Add MyDrawer here

      body: _listOfBottomPages[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTapClick,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
