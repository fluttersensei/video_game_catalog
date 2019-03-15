import 'package:flutter/material.dart';
import 'package:video_game_catalog/models/game.dart';

class GameCover extends StatelessWidget {
  static const COVER_RATIO = 0.6;
  final Game game;
  final double height;

  GameCover(this.game, {this.height = 260});

  @override
  Widget build(BuildContext context) {
    var width = game.platform == GamePlatform.NintendoSwitch
        ? 130.0 // to fit skinny nintendo switch cover
        : COVER_RATIO * height;

    return Material(
      borderRadius: BorderRadius.circular(8.0),
      elevation: 2.0,
      child: Image.network(
        game.url,
        fit: BoxFit.cover,
        width: width,
        height: height,
      ),
    );
  }
}
