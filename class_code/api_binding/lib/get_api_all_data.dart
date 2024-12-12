// import 'dart:convert';
// import 'dart:developer';

import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

class GetapideviceData extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  GetapideviceData(responseData, {super.key});

  @override
  State<GetapideviceData> createState() => _GetapideviceDataState();
}

class _GetapideviceDataState extends State<GetapideviceData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Display Data Screen',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          
        )
      },
      ),
    );
  }
}
