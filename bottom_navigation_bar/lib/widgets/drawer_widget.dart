import 'package:bottom_navigation_bar/pages/calendar_page.dart';
import 'package:bottom_navigation_bar/pages/feedback_page.dart';
import 'package:bottom_navigation_bar/pages/help_page.dart';
import 'package:bottom_navigation_bar/pages/notes_page.dart';
import 'package:bottom_navigation_bar/pages/stopwatch_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Close'),
            trailing: const Icon(Icons.close),
            onTap: () {
              Navigator.pop(context); // Close the drawer
            },
          ),
          // ListTile(
          //   leading: const Icon(Icons.home),
          //   title: const Text('Home'),
          //   onTap: () {
          //     // Navigate to home screen
          //   },
          // ),
          // ListTile(
          //   leading: const Icon(Icons.calendar_today),
          //   title: const Text('Tasks'),
          //   onTap: () {
          //     // Navigate to tasks screen
          //   },
          // ),
          // ListTile(
          //   leading: const Icon(Icons.settings),
          //   title: const Text('Settings'),
          //   onTap: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => const SettingsPage()));
          //   },
          // ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.alarm),
            title: const Text('Reminders'),
            onTap: () {
              // Navigate to reminders screen
            },
          ),
          ListTile(
            leading: const Icon(Icons.calendar_view_month),
            title: const Text('Ankit Calendar'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TableCalendarExample()));

              // Navigate to calendar screen
            },
          ),
          ListTile(
            leading: const Icon(Icons.note),
            title: const Text('Notes'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotesPage(),
                ),
              );
              // Navigate to notes screen
            },
          ),
          ListTile(
            leading: const Icon(Icons.timer),
            title: const Text('Stopwatch'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const StopwatchPage(),
                ),
              );
              // Navigate to notes screen
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text('Help'),
            onTap: () {
              // Show help documentation or tutorial
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HelpPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.feedback),
            title: const Text('Feedback'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FeedbackPage(),
                ),
              );
              // Navigate to feedback screen or show feedback form
            },
          ),
        ],
      ),
    );

    // return Drawer(
    //   child: ListView(
    //     padding: EdgeInsets.zero,
    //     children: <Widget>[
    //       DrawerHeader(
    //         child: Text('Drawer Header'),
    //         decoration: BoxDecoration(
    //           color: Colors.blue,
    //         ),
    //       ),
    //       ListTile(
    //         title: Text('Item 1'),
    //         onTap: () {
    //           // Handle item 1 tap
    //         },
    //       ),
    //       ListTile(
    //         title: Text('Item 2'),
    //         onTap: () {
    //           // Handle item 2 tap
    //         },
    //       ),
    //       // Add more ListTiles for additional items
    //     ],
    //   ),
    // );
  }
}
