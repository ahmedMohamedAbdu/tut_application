import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {

  MyApp._internal();                                  //named constructor
  int appState = 0;
  static final MyApp _instance = MyApp._internal();   // singleton or single constructor
  factory MyApp() => _instance;                       //factory

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
