import 'package:flutter/material.dart';
import 'package:video_game_catalog/containers/game_cover.dart';
import 'package:video_game_catalog/models/game.dart';

class GameDetail extends StatefulWidget {
  final Game game;

  GameDetail(this.game);

  @override
  _GameDetailState createState() => _GameDetailState();
}

class _GameDetailState extends State<GameDetail> {
  // The widget that displays the cover and some game info.
  Widget get gameDetail {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GameCover(
              widget.game,
              height: 250,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                '${widget.game.title}',
                style: TextStyle(fontSize: 42.0, color: Colors.white),
              ),
            ),
            Text(
              'Game Score ${widget.game.score}',
              style: TextStyle(fontSize: 28.0, color: Colors.white),
            ),
            Text(
              '${Game.platformToString(widget.game.platform)}',
              style: TextStyle(fontSize: 28.0, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // This is a new page, so you need a new Scaffold!
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
      ),
      body: gameDetail,
    );
  }
}


