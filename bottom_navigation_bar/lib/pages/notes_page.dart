import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  final TextEditingController _notesController = TextEditingController();

  @override
  void dispose() {
    _notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: _notesController,
          maxLines: null,
          decoration: const InputDecoration(
            hintText: 'Enter your notes here...',
            border: InputBorder.none,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Save notes
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Hello, world!'),
            ),
          );
          // Fluttertoast.showToast(
          //     msg: "Button clicked",
          //     toastLength: Toast.LENGTH_SHORT,
          //     // gravity: ToastGravity.BOTTOM,
          //     gravity: ToastGravity.TOP,
          //     timeInSecForIosWeb: 10,
          //     backgroundColor: Colors.red,
          //     textColor: Colors.white,
          //     fontSize: 16.0);
          Navigator.pop(context, _notesController.text);
        },
        child: const Icon(Icons.save),
      ),
    );
  }
}
