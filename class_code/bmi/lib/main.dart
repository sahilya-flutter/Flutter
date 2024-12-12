import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController wtController = TextEditingController();
  TextEditingController ftController = TextEditingController();
  TextEditingController inController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI'),
        ),
        body: const Center(
          child: Card(
            elevation: 3,
            shadowColor: Colors.amberAccent,
            child: Text(
              "Hello Sahil",
              style: TextStyle(
                fontSize: 60,
              ),
            ),
          ),
        ));
  }
}
