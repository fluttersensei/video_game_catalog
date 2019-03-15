import 'package:flutter/material.dart';
import 'package:video_game_catalog/containers/game_grid.dart';
import 'package:video_game_catalog/models/game.dart';

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
      home: MyHomePage(title: 'My Games'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  final List<Game> initialGames = [
    Game(
        'Minecraft',
        'https://storage.googleapis.com/static-flutter-sensei/ps4_minecraft.jpg',
        GamePlatform.Ps4,
        score: 8.1),
    Game(
        'Fortnite',
        'https://storage.googleapis.com/static-flutter-sensei/switch_fornite.jpg',
        GamePlatform.NintendoSwitch,
        score: 9.3),
    Game(
        'Call of Duty - Black Ops III',
        'https://storage.googleapis.com/static-flutter-sensei/xo_callofdutyblackopsiii.jpg',
        GamePlatform.XboxOne,
        score: 7.4),
    Game(
        'Overwatch',
        'https://storage.googleapis.com/static-flutter-sensei/ps4_overwatch.jpg',
        GamePlatform.Ps4,
        score: 8.5),
    Game(
        'Rocket League',
        'https://storage.googleapis.com/static-flutter-sensei/ps4_rocketleague.jpg',
        GamePlatform.Ps4,
        score: 6.7),
    Game(
        'Uncharted 4',
        'https://storage.googleapis.com/static-flutter-sensei/ps4_uncharted_4.jpeg',
        GamePlatform.Ps4,
        score: 8.9),
    Game(
        'Forza Horizon 4',
        'https://storage.googleapis.com/static-flutter-sensei/xo_forza_horizon_4.jpg',
        GamePlatform.XboxOne,
        score: 9.5),
    Game(
        'Zelda - The breath of the wild taking',
        'https://storage.googleapis.com/static-flutter-sensei/switch_zelda.jpg',
        GamePlatform.NintendoSwitch,
        score: 8.3),
  ];
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
      body: GameGrid(widget.initialGames),
    );
  }
}
