import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Frequently Asked Questions'),
            leading: const Icon(Icons.question_answer),
            onTap: () {
              // Open FAQ page
            },
          ),
          ListTile(
            title: const Text('Contact Us'),
            leading: const Icon(Icons.contact_support),
            onTap: () {
              // Open contact page
            },
          ),
          ListTile(
            title: const Text('Troubleshooting'),
            leading: const Icon(Icons.build),
            onTap: () {
              // Open troubleshooting page
            },
          ),
        ],
      ),
    );
  }
}
