import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp( // #1 Root Material app: sets app theme and first screen
    title: 'Week 1 - All 8 Widgets',
    theme: ThemeData(primarySwatch: Colors.teal),
    home: const HomeScreen(),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold( // #2 Main layout structure for page (AppBar + Body)
    appBar: AppBar( // #3 Top app bar
      title: const Text('All Widgets'),
    ),
    body: Center( // #7 Centers the content on the screen
      child: Container( // #8 Box widget with padding for layout
        padding: const EdgeInsets.all(20),
        child: Column( // #6 Arranges children vertically
          children: [
            Row( // #5 Arranges children horizontally
              children: [
                const Icon(Icons.star),
                const Text('Flutter'), // #4 Displays "Flutter" text
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
