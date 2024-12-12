import 'package:expence/login.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home(LoginPage loginPage, {super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              foregroundImage: AssetImage("assets/images/paisa.png"),
              radius: 70,
            ),
            
          ],
        ),
      ),
    );
  }
}
