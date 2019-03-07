import 'package:flutter/material.dart';

class GameGrid extends StatelessWidget {
  GameGrid(this.gameList);
  final List<String> gameList;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 30,
      children: List.generate(gameList.length, (index) {
        return Center(child: Text(gameList[index]));
      }),
    );
  }
}
