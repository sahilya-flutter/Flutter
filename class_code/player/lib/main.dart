import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:player/player_model.dart';
import 'package:sqflite/sqflite.dart';

dynamic database;

void insertPlayerData(Player pObj) async {
  Database localDB = await database;

  pObj.playerMap();
  conflictAlgorithm:
  ConflictAlgorithm.replace;
}

Future<List<Map<String, dynamic>>> getPlayerData() async {
  Database localDB = await database;

  List<Map<String, dynamic>> playerData = await localDB.query("Player");
  return playerData;
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // create bdatabase+ table create

  openDatabase(
    join(await getDatabasesPath(), "IndaianPlayerDB.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''
      create table palyer(
      playerName TEXT,
      jerNo INT PRIMERY KEY,
      runs INT,
      avg REAL
      )

      ''');
    },
  );

  Player pObj1 =
      Player(playerName: "Virat Kohali", jerNo: 18, runs: 80000, avg: 70.44);
  Player pObj2 =
      Player(playerName: "Rohit Sharma", jerNo: 45, runs: 40000, avg: 60.24);
  Player pObj3 = Player(playerName: "MSD", jerNo: 7, runs: 60000, avg: 70.24);

  insertPlayerData(pObj1);
  insertPlayerData(pObj2);
  insertPlayerData(pObj3);

  print(getPlayerData());
}
