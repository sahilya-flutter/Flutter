import 'package:flutter/material.dart';

void main() {
  runApp(const AppBarColorApp());
}

class AppBarColorApp extends StatefulWidget {
  const AppBarColorApp({super.key});

  @override
  State<AppBarColorApp> createState() => _AppBarColorApp();
}

class _AppBarColorApp extends State<AppBarColorApp> {
  bool colorChange = true;
  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      debugShowCheckedModeBanner:false,
    title: "Appbar Color",
    home: Scaffold(
      appBar:AppBar(
        title:const Text("Appbar Color App"),
        centerTitle: true,
        backgroundColor: (colorChange)? Colors.amberAccent:Colors.blue,
      
        ),
        body:const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Change Appbar color"),

            ],

          ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed:(){
              if(colorChange){
              colorChange=false;

            }else{
              colorChange=true;
            } 
            setState(() {});
            },
            child:const Icon(Icons.add),
            ),
      ),
    );
  }
}
