import 'dart:developer';

import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key, required this.str});
  final String str;

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  void didUpDateWidget(Screen2 oldWidget) {
    super.didUpdateWidget(oldWidget);
    log("didUpdateWidget");
  }

  @override
  Widget build(BuildContext context) {
    return Text(widget.str);
    

  }
}
