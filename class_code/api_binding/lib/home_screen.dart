import 'dart:convert';
import 'dart:developer';

import 'package:api_binding/get_api_all_data.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Api Binding',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  getAllData();
                },
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Color.fromARGB(255, 7, 81, 117),
                  ),
                  child: const Center(
                    child: Text(
                      'Get Data',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Colors.blueGrey,
                  ),
                  child: const Center(
                    child: Text(
                      'Post Data',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Colors.blueGrey,
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(25),
                      child: Text(
                        'Update Data',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Color.fromARGB(255, 7, 81, 117),
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Text(
                        'Delete Data',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void getAllData() async {
    Uri url = Uri.parse("https://api.restful-api.dev/objects");
    http.Response response = await http.get(url);
    log(response.body);

    List<dynamic> responseData = jsonDecode(response.body);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GetapideviceData(responseData),
      ),
    );
  }

  // void getbyId() async {
  //   Uri url = Uri.parse("https://api.restful-api.dev/objects");
  //   http.Response response = await http.get(url);
  //   log(response.body);

  //   List<dynamic> responseData = jsonDecode(response.body);
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => GetapideviceData(responseData),
  //     ),
  //   );
  // }

  // void putData() async {
  //   Uri url = Uri.parse("https://api.restful-api.dev/objects");
  //   http.Response response = await http.get(url);
  //   log(response.body);

  //   List<dynamic> responseData = jsonDecode(response.body);
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => GetapideviceData(responseData),
  //     ),
  //   );
  // }

  // void deleteData() async {
  //   Uri url = Uri.parse("https://api.restful-api.dev/objects");
  //   http.Response response = await http.get(url);
  //   log(response.body);

  //   List<dynamic> responseData = jsonDecode(response.body);
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => GetapideviceData(responseData),
  //     ),
  //   );
  // }
}
