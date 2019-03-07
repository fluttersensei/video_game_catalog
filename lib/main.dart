import 'package:flutter/material.dart';
import 'package:video_game_catalog/containers/game_grid.dart';

void main() => runApp(MyApp());

const List<String> initialGames = [
  'Minecraft',
  'Fortnite',
  'Call of Duty',
  'Overwatch',
  'Rocket League',
  'Uncharted 4',
  'Forza Horizon 4',
  'Cuphead',
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Game Catalog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'My Games'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GameGrid(initialGames),
    );
  }
}
