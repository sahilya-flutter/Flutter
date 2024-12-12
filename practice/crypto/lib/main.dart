import 'package:crypto/constant/constant.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        title:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             const Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello Sahil',style: TextStyle(color:Constant.pink),),
                 Text('Welcome Back',style: TextStyle(color:Constant.black),),
              ],
            ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
            color: Constant.lightGray),
            child: const Icon(Icons.notification_add_outlined),
          ),
          ],
        ),
      ),
    );
  }
}
