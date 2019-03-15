enum GamePlatform { XboxOne, Ps4, NintendoSwitch }

class Game {
  final String title;
  final String url;
  final GamePlatform platform;
  final String description;
  final double score;

  Game(this.title, this.url, this.platform,
      {this.description = '', this.score = 0.0});
}
