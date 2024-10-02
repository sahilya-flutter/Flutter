import 'package:flutter/material.dart';
import 'package:indian_flag/tiranga.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "INDIAN Flag",
      home: MyScreen(),
    );
  }
}
