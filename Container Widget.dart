// Container Widget

import 'package:flutter/material.dart';

//void main() => runApp(MyApp()); // Simple Way
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          // backgroundColor: Colors.black,
          body: Column(
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.yellowAccent[100],
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.calendar_today),
                  Text("123456"),
                  Text("ABCDEF")
                ]),
          )
        ],
      )),
    );
  }
}
