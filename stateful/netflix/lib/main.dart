import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

// ignore: must_be_immutable
class MainApp extends StatelessWidget {
  MainApp({super.key});
  List netflix = [""];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:const  Text("Snapchat"),
        ),
        body: ListView.builder(
          
           itemBuilder: (BuildContext context, int index) { 
            
         },
        
        )

        
      ),
    );
  }
}
