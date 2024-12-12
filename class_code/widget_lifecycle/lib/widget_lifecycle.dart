import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:widget_lifecycle/screen2.dart';

class WidgetLifecycle extends StatefulWidget {
  const WidgetLifecycle({super.key});

  @override
  // ignore: no_logic_in_create_state
  State<WidgetLifecycle> createState() {
    log('in create State');
    return _WidgetLifecycleState();
  }
}

class _WidgetLifecycleState extends State<WidgetLifecycle> {
  String text = 'C2W';
  @override
  void initState() {
    super.initState();
    log('in initState()');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    log('in didChangedependecies()');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen1"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Screen2(str: text),
          ElevatedButton(
            onPressed: () {
              setState(() {});
              text = (text == 'C2w') ? "Core2web" : "C2w";
            },
            child: const Text('Update'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => Screen2(str: text)));
      }),
    );
  }

  @override
  void deactivate() {
    super.deactivate();
    log('in deactivate');
  }

  @override
  void dispose() {
    super.dispose();
    log('in dispose()');
  }
}
