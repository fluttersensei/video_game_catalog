import 'package:flutter/material.dart';
import 'package:video_game_catalog/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Game Catalog',
      theme: ThemeData(
        primaryColor: Colors.black,
        canvasColor: Colors.black,
      ),
      home: Home(title: 'My Games'),
    );
  }
}
