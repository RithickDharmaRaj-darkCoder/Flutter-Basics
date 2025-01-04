// Button Bar

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {}, child: Icon(Icons.chat)),
              ElevatedButton(onPressed: () {}, child: Icon(Icons.group)),
              ElevatedButton(onPressed: () {}, child: Icon(Icons.call)),
              ElevatedButton(onPressed: () {}, child: Icon(Icons.settings)),
            ],
          ),
        ),
      ),
    );
  }
}
