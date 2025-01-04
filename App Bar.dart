// App Bar

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          elevation: 30, // shadow
          shadowColor: Colors.red,
          title: Text("MyBrain"),
          actions: [Icon(Icons.search), Icon(Icons.more_vert)],
          leading: Icon(Icons.menu),
        ),
        body: Center(),
        backgroundColor: Colors.black,
      ),
    );
  }
}
