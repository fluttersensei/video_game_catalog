import 'package:flutter/material.dart';
import 'package:video_game_catalog/models/game.dart';
import 'package:video_game_catalog/pages/game_detail.dart';

class GameCover extends StatelessWidget {
  static const COVER_RATIO = 0.7;
  final Game game;
  final double height;

  GameCover(this.game, {this.height = 260});

  void _showGameDetail(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => GameDetail(game),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var width = game.platform == GamePlatform.NintendoSwitch
        ? 130.0 // to fit skinny nintendo switch cover
        : COVER_RATIO * height;

    // InkWell is a special Material widget that makes its children tappable
    // and adds Material Design ink ripple when tapped.
    return InkWell(
      onTap: () => _showGameDetail(context),
      child: Material(
        borderRadius: BorderRadius.circular(4.0),
        clipBehavior: Clip.antiAlias,
        elevation: 2.0,
        child: Image.network(
          game.url,
          fit: BoxFit.fill,
          width: width,
          height: height,
        ),
      ),
    );
  }
}
