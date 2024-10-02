import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "India Flag ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 129, 17, 157),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 10,
                  height: 455,
                  color: const Color.fromARGB(255, 84, 74, 74),
                ),
                SizedBox(
                  width: 150,
                  height: 455,
                  child: Column(
                    children: [
                      Container(
                        width: 150,
                        height: 45,
                        color: Colors.orange,
                      ),
                      Container(
                        width: 150,
                        height: 45,
                        color: Colors.white,
                        child: Image.network(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/2048px-Ashoka_Chakra.svg.png"),
                      ),
                      Container(
                        width: 150,
                        height: 45,
                        color: Colors.green,
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 110,
                ),
                Container(
                  width: 150,
                  height: 45,
                  color: const Color.fromARGB(255, 192, 164, 124),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 88,
                ),
                Container(
                  width: 200,
                  height: 45,
                  color: const Color.fromARGB(255, 144, 115, 73),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 66,
                ),
                Container(
                  width: 250,
                  height: 45,
                  color: const Color.fromARGB(255, 78, 61, 37),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
