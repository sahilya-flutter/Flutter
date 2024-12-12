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
  TextEditingController nameController = TextEditingController();
  TextEditingController companyController = TextEditingController();
  List<Map> info = [];

  void addData() {
    setState(() {
      info.add({
        "Name": nameController.text,
        "Company": companyController.text,
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "INFO",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
          ),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    controller: nameController,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    decoration: const InputDecoration(
                      hintText: "Name",
                      hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    controller: companyController,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    decoration: const InputDecoration(
                      hintText: "Company",
                      hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: addData,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Colors.blue),
                      child: const Center(
                          child: Text(
                        "Submit",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      )),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: info.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 150,
                            width: 300,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Colors.grey,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Name : " '${info[index]["Name"]}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    "Company : " '${info[index]["Company"]}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}


