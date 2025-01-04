// Loader - CircularProgressIndicator

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// Stateless Widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: CircularProgressIndicator(
          color: Colors.cyan,
          backgroundColor: Colors.yellow,
          //value: 0.0, // Progress Level
          strokeWidth: 5,
        )),
        backgroundColor: Colors.black,
      ),
    );
  }
}
