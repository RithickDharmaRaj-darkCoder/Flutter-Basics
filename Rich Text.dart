// Test - Rich Text

import 'package:flutter/material.dart';

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
          appBar: AppBar(
            backgroundColor: Colors.black,
            //elevation: 30, // shadow
            //shadowColor: Colors.red,
            title: RichText(
                text: TextSpan(
                    text: 'G',
                    style: TextStyle(fontSize: 23, color: Colors.blue),
                    children: [
                  //TextSpan(text: 'G', style: TextStyle(color: Colors.red)),
                  TextSpan(text: 'o', style: TextStyle(color: Colors.red)),
                  TextSpan(text: 'o', style: TextStyle(color: Colors.yellow)),
                  TextSpan(text: 'g', style: TextStyle(color: Colors.blue)),
                  TextSpan(text: 'l', style: TextStyle(color: Colors.green)),
                  TextSpan(text: 'e', style: TextStyle(color: Colors.red)),
                  TextSpan(
                      text: ' Photos', style: TextStyle(color: Colors.white))
                ])),
            actions: [
              Icon(Icons.add, size: 30, color: Colors.white30),
              SizedBox(width: 10),
              Icon(Icons.notifications_none_outlined,
                  size: 30, color: Colors.white30),
              SizedBox(width: 10),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 22,
                backgroundImage: NetworkImage(
                    "https://png.pngtree.com/thumb_back/fh260/background/20230612/pngtree-man-in-glasses-in-a-low-poly-piece-of-art-image_2872755.jpg"),
              ),
              SizedBox(width: 10),
            ],
            //leading: Icon(Icons.menu),
          ),
          body: Column(
            children: [],
          )),
    );
  }
}
