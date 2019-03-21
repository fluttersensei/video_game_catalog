enum GamePlatform { XboxOne, Ps4, NintendoSwitch }

class Game {
  final String title;
  final String url;
  final GamePlatform platform;
  final String description;
  final double score;

  Game(this.title, this.url, this.platform,
      {this.description = '', this.score = 0.0});

  static String platformToString(GamePlatform platform) {
    switch (platform) {
      case GamePlatform.XboxOne:
        return 'Xbox One';
      case GamePlatform.Ps4:
        return 'Playstation 4';
      case GamePlatform.NintendoSwitch:
        return 'Nintendo Switch';
      default:
        return 'Missing platform!';
    }
  }
}
