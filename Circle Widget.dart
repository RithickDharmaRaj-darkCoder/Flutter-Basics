// Circle Avatar

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: CircleAvatar(
          backgroundColor: Colors.cyan,
          radius: 55,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 50,
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRW2tYG6jCYi7PN2oMcifzOFBhMiIvl9puEweyhL77T-PRhWB3dmeawpw2tLg_BCneGyE8&usqp=CAU"),
          ),
        )),
      ),
    );
  }
}
