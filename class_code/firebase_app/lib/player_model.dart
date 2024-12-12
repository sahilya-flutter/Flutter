

class PlayerModel {
  final String playerName;
  final int jerNo;
  final String playerid;

  PlayerModel(
      {required this.playerName, required this.jerNo, required this.playerid});
}

Map<String, dynamic> playerList() {
  var playerName;
  var jerNo;
  var playerid;
  return {'playerName': playerName, 'jerNo': jerNo, 'id': playerid};
}
