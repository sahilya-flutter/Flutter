import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My Cart"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceA,
                    children: [
                      Container(
                        width: 100,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.teal.shade200,
                        ),
                        child: Image.asset(
                          "assets/shoes.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.teal.shade200,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Nike Shoes",
                                style: TextStyle(fontWeight: FontWeight.w900),
                              ),
                              const Text(
                                "With iconic style and lgendary comfort, on repeat",
                                style: TextStyle(fontWeight: FontWeight.w900),
                              ),
                              // Spacer(),
                              Row(
                                children: [
                                  const Text(
                                    "\$77.00",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 15),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.remove),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border: Border.all(color: Colors.black),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.add),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 100,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.teal.shade200,
                        ),
                        child: Image.asset(
                          "assets/shoes.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.teal.shade200,
                        ),

                        // text column

                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Nike Shoes",
                              style: TextStyle(fontWeight: FontWeight.w900),
                            ),
                            const Text(
                              "With iconic style and lgendary comfort, on repeat",
                              style: TextStyle(fontWeight: FontWeight.w900),
                            ),
                            const Text(
                              "\$77.00",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 15),
                            ),
                            // Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.remove),
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                border: Border.all(color: Colors.black),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.add),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
