import 'package:flutter/material.dart';

class PersonPage extends StatelessWidget {
  String name;
  String description;
  String imageUrl;

  PersonPage(
      {super.key,
      required this.name,
      required this.description,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(name),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
              radius: 60,
            ),
            const SizedBox(height: 20),
            Text(
              name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                description,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
