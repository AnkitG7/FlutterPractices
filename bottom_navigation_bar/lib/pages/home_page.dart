import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Home'),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Welcome to my App',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://picsum.photos/500/300',
              height: 200,
              width: 400,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
              'Donec non ex et diam euismod tristique. Sed gravida interdum enim,'
              ' quis feugiat mauris finibus vel. Vestibulum scelerisque enim sed '
              'leo pulvinar, sed varius nibh sodales. ',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
