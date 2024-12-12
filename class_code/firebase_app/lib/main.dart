import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_app/player_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Firebase App',
      home: PlayerScreen(),
    );
  }
}

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

  @override
  State<StatefulWidget> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  TextEditingController playerNameTextController = TextEditingController();
  TextEditingController jerseyNoTextController = TextEditingController();

  List<PlayerModel> playerList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'FireBase Player App',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: playerNameTextController,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
              decoration: const InputDecoration(
                hintText: "Enter Player Name",
                hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          //Player jersy No
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: jerseyNoTextController,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
              decoration: const InputDecoration(
                hintText: "Enter Player Jersey No",
                hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              if (playerNameTextController.text.trim().isNotEmpty &&
                  jerseyNoTextController.text.trim().isNotEmpty) {
                Map<String, dynamic> data = {
                  "playerName": playerNameTextController.text.trim(),
                  "jerNo": jerseyNoTextController.text.trim(),
                };
                FirebaseFirestore.instance.collection("playerInfo").add(data);
                playerNameTextController.clear();
                jerseyNoTextController.clear();
                log("Data Added");
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Data Added"),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Invalid Data"),
                  ),
                );
              }
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                "Add Data",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () async {
              QuerySnapshot response = await FirebaseFirestore.instance
                  .collection("playerInfo")
                  .get();
              playerList.clear();
              for (int i = 0; i < response.docs.length; i++) {
                playerList.add(
                  PlayerModel(
                    playerName: response.docs[i]['playerName'],
                    playerid: response.docs[i].id,
                    jerNo: response.docs[i]['jerNo'],
                  ),
                );
                setState(() {});
              }
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                "Get data",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // Replace this with ListView.builder to iterate through playerList
          Expanded(
            child: ListView.builder(
              itemCount: playerList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    FirebaseFirestore.instance
                        .collection('playerInfo')
                        .doc(playerList[index].playerid)
                        .delete();
                    playerList.removeAt(index);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Data Added'),
                      ),
                    );
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.grey[200],
                    ),
                    padding: const EdgeInsets.all(20.0),
                    margin: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Player Name: ${playerList[index].playerName}",
                          style: const TextStyle(fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Jersey No: ${playerList[index].jerNo}',
                          style: const TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
