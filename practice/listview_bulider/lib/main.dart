import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var arrName = [
    'Sahil',
    'Gokul',
    'Vishal',
    'Ganesh',
    'Sunil',
    'Bharat',
    'Vinod'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Listview Builder',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: const Center(
          child: CircleAvatar(
            foregroundImage: AssetImage('assets/images/boy.jpg'),
          ),
        ),
      ),
    );
  }
}
