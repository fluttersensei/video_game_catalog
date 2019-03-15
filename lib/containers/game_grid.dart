import 'package:flutter/material.dart';
import 'package:video_game_catalog/containers/game_cover.dart';
import 'package:video_game_catalog/models/game.dart';

class GameGrid extends StatelessWidget {
  GameGrid(this.gameList);
  final List<Game> gameList;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 30,
      children: List.generate(gameList.length, (index) {
        return Center(child: GameCover(gameList[index]));
      }),
    );
  }
}
