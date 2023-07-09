class GameModel {
  GameModel({this.title = ''});

  final String title;

  /// I can use it to validate model easily in presentation layer and usually omit showing something.
  bool get isBroken => title.isEmpty;
}
