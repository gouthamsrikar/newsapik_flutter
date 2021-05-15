import 'package:flutter/material.dart';
import 'package:newsapk/screens/home_screen.dart';
import 'package:newsapk/screens/profile_screen.dart';
import 'package:newsapk/screens/videos_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Newsapk',
      home: Homescreen(),
      routes: {
        Profilescreen.routename: (ctx) => Profilescreen(),
        Videoscreen.routename: (ctx) => Videoscreen(),
      },
    );
  }
}
