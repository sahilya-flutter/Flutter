import 'dart:math';

import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:zomato/zomato_food.dart';

Database? database;

Future<void> insertOrderData(Zomato zObj) async {

  Database localDb = database!; 
  await localDb.insert("Food", zObj.zomatoMap(),
      conflictAlgorithm: ConflictAlgorithm.replace);
}

Future<List<Map<String, dynamic>>> getOrderData() async {
  Database localDb = database!;
  List<Map<String, dynamic>> orderMap = await localDb.query("Food");
  return orderMap;
}

Future<void> updateOrderData(Zomato orderObj) async {
  Database localDb = database!;
  await localDb.update(
    "Food",
    orderObj.zomatoMap(),
    where: 'orderNo = ?',
    whereArgs: [orderObj.orderNo],
  );
}

Future<void> deleteOrderData(int orderNo) async {
  Database localDb = database!;
  await localDb.delete("Food", where: 'orderNo = ?', whereArgs: [orderNo]);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  database = await openDatabase(
    join(await getDatabasesPath(), "zomatoDB.db"), 
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''
        CREATE TABLE Food (
          orderNo INTEGER PRIMARY KEY,
          custName TEXT,
          hotelName TEXT,
          food TEXT,
          bill REAL
        )
      ''');
    },
  );

  Zomato order1 = Zomato(
    orderNo: 100,
    custName: 'Sahil', 
    hotelName: 'Maharaja',
    food: 'Noodles, Veg Pulav',
    bill: 365,
  );

  Zomato order2 = Zomato(
    orderNo: 120,
    custName: 'Vishal', 
    hotelName: 'Lucky',
    food: 'Noodles, Veg Pulav, Coldrinks',
    bill: 480,
  );

  await insertOrderData(order1);
  await insertOrderData(order2);

  print(await getOrderData());

  order2 = Zomato(
    orderNo: 120,
    custName: 'vishal', 
    hotelName: 'Lucky',
    food: '${order2.food}, 7Up',
    bill: order2.bill + 150.32,
  );

  await updateOrderData(order2);
  print(await getOrderData());

  await deleteOrderData(order2.orderNo);
  print(await getOrderData());
}
